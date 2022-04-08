# Message guidelines

## Format

All messages should follow [ROS message description specification](https://docs.ros.org/en/galactic/Concepts/About-ROS-Interfaces.html#background).

The accepted formats are:

- `.msg`
- `.srv`
- `.action`

## Default units

All the fields by default have the following units depending on their types:

| type           | default unit  |
|----------------|---------------|
| distance       | meter (m)     |
| angle          | radians (rad) |
| time           | second (s)    |
| speed          | m/s           |
| velocity       | m/s           |
| acceleration   | m/s²          |
| angular vel.   | rad/s         |
| angular accel. | rad/s²        |

If the field in a message will have any of these default units, don't add any suffix or prefix denoting the type.

## Non-default units

For non-default units, use following suffixes:

| type     | non-default unit | suffix  |
|----------|------------------|---------|
| distance | nanometer        | `_nm`   |
| distance | micrometer       | `_um`   |
| distance | millimeter       | `_mm`   |
| distance | kilometer        | `_km`   |
| angle    | degree (deg)     | `_deg`  |
| time     | nanosecond       | `_ns`   |
| time     | microsecond      | `_us`   |
| time     | millisecond      | `_ms`   |
| time     | minute           | `_min`  |
| time     | hour (h)         | `_hour` |
| velocity | km/h             | `_kmph` |

## Message field types

For list of types supported by the ROS interfaces [see here](https://docs.ros.org/en/galactic/Concepts/About-ROS-Interfaces.html#field-types).

Also copied here for convenience:

| Message Field Type | C++ equivalent   |
|--------------------|------------------|
| `bool`             | `bool`           |
| `byte`             | `uint8_t`        |
| `char`             | `char`           |
| `float32`          | `float`          |
| `float64`          | `double`         |
| `int8`             | `int8_t`         |
| `uint8`            | `uint8_t`        |
| `int16`            | `int16_t`        |
| `uint16`           | `uint16_t`       |
| `int32`            | `int32_t`        |
| `uint32`           | `uint32_t`       |
| `int64`            | `int64_t`        |
| `uint64`           | `uint64_t`       |
| `string`           | `std::string`    |
| `wstring`          | `std::u16string` |

## Comments

On top of the message, briefly explain what the message contains and/or what it is used for. See [sensor_msgs/msg/Imu.msg](https://github.com/ros2/common_interfaces/blob/master/sensor_msgs/msg/Imu.msg#L1-L13) for an example.

If necessary, add line comments before the fields that explain the context and/or meaning.
For simple fields like `x, y, z, w` you might not need to add comments.

Even though it is not strictly checked, try not to pass 100 characters in a line.

*Example:*
```
# Number of times the vehicle performed an emergency brake
uint32 count_emergency_brake

# Seconds passed since the last emergency brake
uint64 duration
```

## Example usages

- Don't use unit suffixes for default types:
    - Bad: `float32 path_lenght_m`
    - Good: `float32 path_lenght`
- Don't prefix the units:
    - Bad: `float32 m_path_lenght`
    - Good: `float32 path_lenght_m`
- Use recommended suffixes if available:
    - Bad: `float32 velocity_vehicle_km_h`
    - Good: `float32 velocity_vehicle_kmph`
