# autoware_map_msgs

### AreaInfo.msg

Defines a lateral control command message with a timestamp.

The message conveys the expectation for vehicle's lateral state to be in the given configuration in the time point: `control_time`.

- The field `steering_tire_angle` is required.
- The field `steering_tire_rotation_rate` is optional but may be required by some nodes.
  - If this field is used, `is_defined_steering_tire_rotation_rate` must be set `true`.

### PCDMapWithID.msg

### LoadPCDMapsGeneral.srv
