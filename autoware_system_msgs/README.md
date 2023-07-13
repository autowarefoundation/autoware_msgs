# autoware_system_msgs

## `GetVersion.srv`

The `GetVersion.srv` service is designed to provide version information based on the [Semantic Versioning 2.0.0](https://semver.org/) format. The data structure is defined as follows:

```yaml
---
uint16 major # Major version number: Incremented when incompatible API changes are made
uint16 minor # Minor version number: Incremented when new, backward-compatible functionalities are added
uint16 patch # Patch version number: Incremented when backward-compatible bugs fixes are made
```
