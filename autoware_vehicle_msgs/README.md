# autoware_vehicle_msgs

## Design

Vehicle dimensions and axes: <https://autowarefoundation.github.io/autoware-documentation/main/design/autoware-architecture-v1/interfaces/components/vehicle-dimensions/>

### ActuationCommand.msg

Defines an actuator-level command for the vehicle.

This message sits **below** `autoware_control_msgs/Control.msg` in the control stack.

- `Control.msg` expresses the _desired physical state_ of the vehicle (target steering tire angle, target velocity / acceleration). It is vehicle-independent.
- `ActuationCommand.msg` expresses _commands to the actuators themselves_ (throttle pedal, brake pedal, steering input). Its meaning depends on how the vehicle interface is configured.

The typical producer is `autoware_raw_vehicle_cmd_converter`, which converts a `Control` command into actuator-level signals using the vehicle's accel / brake / steer maps. The typical consumer is the vehicle interface that forwards these signals to the vehicle CAN bus or to a simulator.

Fields:

| Field       | Meaning                                                                              | Range                                                                                                          | Sign                      | Units         |
| ----------- | ------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------- | ------------------------- | ------------- |
| `accel_cmd` | Normalized throttle pedal position                                                   | `[0.0, 1.0]`. Realistic upper bound from `max_throttle` (default `0.4`)                                        | n/a                       | Dimensionless |
| `brake_cmd` | Normalized brake pedal position                                                      | `[0.0, 1.0]`. Realistic upper bound from `max_brake` (default `0.8`)                                           | n/a                       | Dimensionless |
| `steer_cmd` | Steering actuation signal. Semantics depend on `convert_steer_cmd_method`, see below | Vehicle-dependent. Hard clamp `[min_steer, max_steer]` (default `[-10.0, 10.0]`) is a safety stop, not nominal | Left positive (Ackermann) | See below     |

Note that for `brake_cmd`, the command itself is positive while the resulting deceleration is negative.

`steer_cmd` modes:

| `convert_steer_cmd_method` | `steer_cmd` meaning                                                                       | Units           |
| -------------------------- | ----------------------------------------------------------------------------------------- | --------------- |
| Unset (vanilla)            | Steering tire angle                                                                       | radians         |
| `"vgr"`                    | Steering wheel angle, derived from the tire angle via a velocity-dependent gear ratio     | radians         |
| `"steer_map"`              | Vehicle-specific actuation signal (for example an EPS voltage), produced from a steer map | vehicle-defined |

For all three fields, the canonical contract is _whatever the vehicle's actuation maps and parameters define_. The values above are conventions used by the reference `autoware_raw_vehicle_cmd_converter`; a different vehicle interface (CARLA, AWSIM, a real CAN driver) is free to use a different convention.

### ActuationCommandStamped.msg

Wraps `ActuationCommand` with a `std_msgs/Header`, typically containing the time at which the command was issued. The `frame_id` is not used.

### ActuationReport.msg

Defines the _actual_ actuator state reported back by the vehicle, mirroring `ActuationCommand`.

Producers: the vehicle interface (real or simulated). Consumers: tools that need to know what the vehicle is actually doing at the actuator level, such as `autoware_accel_brake_map_calibrator`.

Fields use the same units, sign conventions, and modes as `ActuationCommand`:

- `accel_report`: Normalized throttle pedal position the vehicle is currently applying.
- `brake_report`: Normalized brake pedal position the vehicle is currently applying.
- `steer_report`: Steering actuation signal the vehicle is currently applying. Same mode-dependent semantics as `steer_cmd`.

### ActuationReportStamped.msg

Wraps `ActuationReport` with a `std_msgs/Header` carrying the report's timestamp.
