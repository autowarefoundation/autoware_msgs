import json
import os
import sys
from pathlib import Path

import anthropic


def check_file_with_llm(
    file_path: Path,
    client: anthropic.Anthropic,
    model: str = "claude-sonnet-4-6",
) -> dict:
    """Send the .msg file to Claude for style review. Returns parsed JSON result."""

    content = file_path.read_text(encoding="utf-8")
    numbered = "\n".join(
        f"{i+1:4d}  {line}" for i, line in enumerate(content.splitlines())
    )

    user_message = f"""Please review the following ROS2 .msg file for style violations.

File: `{file_path.name}`

```
{numbered}
```

Respond with the JSON format specified in your instructions."""

    prompt =  Path("docs/format-guide.md").read_text(encoding="utf-8")
    response = client.messages.create(
        model=model,
        max_tokens=2048,
        system=prompt,
        messages=[{"role": "user", "content": user_message}],
    )

    raw = response.content[0].text.strip()

    # Strip markdown code fences if present
    if raw.startswith("```"):
        raw = raw.split("```", 2)[1]
        if raw.startswith("json"):
            raw = raw[4:]
        raw = raw.rsplit("```", 1)[0].strip()

    return json.loads(raw)

def format_llm_result(
    result: dict, file_path: Path, use_color: bool = True
) -> str:
    violations = result.get("violations", [])
    summary = result.get("summary", "")

    RED = "\033[31m" if use_color else ""
    YELLOW = "\033[33m" if use_color else ""
    CYAN = "\033[36m" if use_color else ""
    RESET = "\033[0m" if use_color else ""
    BOLD = "\033[1m" if use_color else ""

    lines = [f"{BOLD}{file_path}{RESET}  {CYAN}[LLM review]{RESET}"]

    if not violations:
        lines.append("  ✅  No style violations found.")
    else:
        for v in violations:
            loc = f"line {v['line']}" if v.get("line") else "file"
            field_tag = f" ({v['field']})" if v.get("field") else ""
            color = RED if v.get("severity") == "error" else YELLOW
            icon = "❌" if v.get("severity") == "error" else "⚠️ "
            lines.append(
                f"  {icon}  [{color}{v.get('rule','?')}{RESET}]{field_tag} "
                f"{loc}: {v.get('message','')}"
            )

    if summary:
        lines.append(f"\n  {CYAN}Summary:{RESET} {summary}")

    return "\n".join(lines)


def emit_github_annotations(result: dict, file_path: Path) -> None:
    for v in result.get("violations", []):
        loc = f",line={v['line']}" if v.get("line") else ""
        level = "error" if v.get("severity") == "error" else "warning"
        rule = v.get("rule", "llm-style")
        msg = v.get("message", "").replace("\n", " ")
        print(f"::{level} file={file_path}{loc}::[{rule}] {msg}")


def main(argv: list[str] | None = None) -> int:
    import argparse

    parser = argparse.ArgumentParser(
        description="LLM-based style checker for ROS2 .msg files (Autoware guidelines)"
    )
    parser.add_argument("files", nargs="+", help="Path(s) to .msg files")
    parser.add_argument("--model", default="claude-sonnet-4-6")
    parser.add_argument("--no-color", action="store_true")
    parser.add_argument(
        "--github-actions",
        action="store_true",
        help="Emit GitHub Actions annotations",
    )
    parser.add_argument(
        "--output-json",
        metavar="FILE",
        help="Write full JSON results to a file",
    )
    args = parser.parse_args(argv)

    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        print("ERROR: ANTHROPIC_API_KEY environment variable is not set.", file=sys.stderr)
        return 2

    client = anthropic.Anthropic(api_key=api_key)
    use_color = not args.no_color and not args.github_actions

    total_errors = 0
    total_warnings = 0
    all_results = []

    for file_str in args.files:
        fp = Path(file_str)
        if not fp.exists():
            print(f"ERROR: File not found: {fp}", file=sys.stderr)
            total_errors += 1
            continue
        if fp.suffix != ".msg":
            continue

        if not args.github_actions:
            print(f"  🔍  Reviewing {fp} with LLM…", end="", flush=True)

        try:
            result = check_file_with_llm(fp, client, model=args.model)
        except Exception as exc:
            print(f"\nERROR: LLM call failed for {fp}: {exc}", file=sys.stderr)
            total_errors += 1
            continue

        if not args.github_actions:
            print(" done.")

        all_results.append({"file": str(fp), "result": result})

        if args.github_actions:
            emit_github_annotations(result, fp)
        else:
            print(format_llm_result(result, fp, use_color=use_color))
            print()

        for v in result.get("violations", []):
            if v.get("severity") == "error":
                total_errors += 1
            else:
                total_warnings += 1

    if args.output_json:
        Path(args.output_json).write_text(
            json.dumps(all_results, indent=2, ensure_ascii=False), encoding="utf-8"
        )

    if not args.github_actions:
        print(f"LLM check summary: {total_errors} error(s), {total_warnings} warning(s)")

    return 1 if total_errors > 0 else 0


if __name__ == "__main__":
    sys.exit(main())
