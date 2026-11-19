# AGENTS.md

## What this repository is

`autoware_msgs` is a ROS 2 message-definition repository for the Autoware autonomous driving stack. It contains only `.msg`, `.srv`, and `.action`files organized into domain-specific packages (e.g. `autoware_perception_msgs`, `autoware_planning_msgs`).

## Repository layout

```
autoware_msgs/
├── autoware_common_msgs/msg/
├── autoware_control_msgs/msg/
├── autoware_localization_msgs/msg/
├── autoware_map_msgs/msg/
├── autoware_msgs/msg/
├── autoware_perception_msgs/msg/
├── autoware_planning_msgs/msg/
├── autoware_sensing_msgs/msg/
├── autoware_system_msgs/msg/
├── autoware_v2x_msgs/msg/
├── autoware_vehicle_msgs/msg/
└── .github/linter/
```

## .msg file format

The .msg files must follow below guidelines

- [format-guide](docs/format-guide.md)

## What NOT to do

- Do not modify `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md` or `DISCLAIMER.md` unless the task explicitly requests documentation updates.
