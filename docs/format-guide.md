# Autoware .msg File Style Guide

This document defines the formatting and naming rules for all `.msg`, `.srv`, and `.action` files in this repository.

**Upstream specification:**
<https://autowarefoundation.github.io/autoware-documentation/main/contributing/coding-guidelines/ros-nodes/message-guidelines/>

---

## 1. File structure

A compliant `.msg` file follows this layout (sections separated by blank lines):

```
# <one-line summary of the message>
# <optional additional context: purpose, which nodes publish/subscribe, etc.>

# <field description> (required|optional)
# default: <value>   ← required when the field is optional
# e.g. <example>     ← recommended for non-obvious fields
<type> <field_name>

# <constant group description>
<type> <CONSTANT_NAME> = <value>
```

---

## 2. File header comment

- The **first line** must be a `#` comment.
- It must briefly state what the message represents and (if not obvious) which
  subsystem uses it.
- Aim for 1–3 lines. Link to external documentation for deep context.

**Good:**

```
# Estimated state of a detected object in the environment.
# Published by perception nodes; consumed by prediction and planning.
```

**Bad (no header):**

```
uint32 id
float32 distance
```

---

## 3. Field comments

Every field must have a comment block immediately above it (no blank line between the comment and the field).

The comment must:

1. Describe what the field represents in one line.
2. State `(required)` or `(optional)`.
3. If `optional`: include `# default: <value>` on a separate comment line.
4. Optionally include `# e.g. <value>` to show a representative value.

**Good:**

```
# Unique object identifier assigned by the tracker. (required)
# e.g. 42
uint32 object_id

# Estimated lateral velocity relative to ego. (optional)
# default: 0.0
# e.g. -1.2
float32 lateral_velocity
```

**Bad (missing annotation):**

```
# Unique object identifier.
uint32 object_id
```

---

## 4. Units

### 4-1. Default units — NO suffix

When a field uses the default unit for its physical dimension, do **not** add any unit suffix to the field name.

| Dimension        | Default unit | Bad example            | Good example    |
| ---------------- | ------------ | ---------------------- | --------------- |
| Distance         | m            | `path_length_m`        | `path_length`   |
| Angle            | rad          | `heading_rad`          | `heading`       |
| Time             | s            | `elapsed_time_s`       | `elapsed_time`  |
| Speed / velocity | m/s          | `velocity_mps`         | `velocity`      |
| Acceleration     | m/s²         | `accel_mps2`           | `accel`         |
| Angular velocity | rad/s        | `yaw_rate_radps`       | `yaw_rate`      |
| Angular accel.   | rad/s²       | `angular_accel_radps2` | `angular_accel` |

### 4-2. Non-default units — approved suffixes only

When a field intentionally uses a non-default unit, append **exactly** the suffix from the table below. No other spellings are accepted.

| Dimension | Unit        | Approved suffix | Bad alternatives         |
| --------- | ----------- | --------------- | ------------------------ |
| Distance  | nanometer   | `_nm`           | `_nanometer`             |
| Distance  | micrometer  | `_um`           | `_micrometer`            |
| Distance  | millimeter  | `_mm`           | `_millimeter`, `_millis` |
| Distance  | kilometer   | `_km`           | `_kilometer`             |
| Angle     | degree      | `_deg`          | `_degree`, `_degrees`    |
| Time      | nanosecond  | `_ns`           | `_nanosec`, `_nano`      |
| Time      | microsecond | `_us`           | `_microsec`              |
| Time      | millisecond | `_ms`           | `_millisec`, `_millis`   |
| Time      | minute      | `_min`          | `_minute`, `_minutes`    |
| Time      | hour        | `_hour`         | `_hr`, `_hours`          |
| Velocity  | km/h        | `_kmph`         | `_km_h`, `_kmh`, `_kph`  |

### 4-3. Suffix position — always a suffix, never a prefix

The unit identifier must appear at the **end** of the field name.

```
float32 kmph_velocity_vehicle    # BAD — unit is a prefix
float32 velocity_vehicle_kmph   # GOOD — unit is a suffix
```

---

## 5. Constants and enumerations

- Constant names must be in `CONSTANT_CASE` (all uppercase, words separated by underscores, no leading or trailing underscore).
- Each constant in a group (consecutive definitions of the same type) must have a **unique value**.
- A constant group should be **mutually exclusive and collectively exhaustive** for the dimension it represents.
- Each constant must have a preceding `#` comment explaining its meaning.

**Good:**

```
# Object classification constants
# Object class is unknown or could not be determined
uint8 OBJECT_UNKNOWN    = 0
# Human pedestrian
uint8 OBJECT_PEDESTRIAN = 1
# Bicycle or motorcycle rider
uint8 OBJECT_CYCLIST    = 2
# Passenger car
uint8 OBJECT_CAR        = 3
```

**Bad:**

```
uint8 Object_Unknown = 0     # wrong case
uint8 PEDESTRIAN = 0         # duplicate value
uint8 Car = 0                # wrong case, duplicate value
```

---

## 6. Array fields

- Use **unbounded dynamic arrays** (`type[]`), not bounded arrays (`type[N]`).
- Exception: only use `[N]` when the size is a hard physical constraint (e.g. a 4×4 matrix represented as `float64[16]`).

```
DetectedObject[]  objects     # GOOD
DetectedObject[5] objects     # BAD — avoid unless physically fixed size
```

---

## 7. Message naming for plural wrappers

If a message exists solely to wrap an array of another message type, append `Array` to the filename.

```
DetectedObject.msg       # singular definition
DetectedObjectArray.msg  # plural wrapper: contains DetectedObject[] objects
```

---

## 8. Line length

Keep lines at or below **100 characters**. This matches the broader Autoware coding style and avoids horizontal scrolling in code review.

---

## 9. Complete example

```
# Estimated state of a single detected object.
# Published by the 3D object detector; consumed by the multi-object tracker.

# Unique identifier assigned by the detector for this frame. (required)
# e.g. 7
uint32 id

# 3D position in the map frame (x, y, z). (required)
geometry_msgs/Point position

# Estimated distance from the ego vehicle to the object. (required)
# e.g. 18.4
float32 distance

# Estimated speed of the object in km/h. (optional)
# default: 0.0
# e.g. 50.0
float32 speed_kmph

# Object classification. Use OBJECT_* constants below. (required)
uint8 object_class


# Object class constants
# Classification could not be determined
uint8 OBJECT_UNKNOWN    = 0
# Human pedestrian
uint8 OBJECT_PEDESTRIAN = 1
# Cyclist (bicycle or motorcycle)
uint8 OBJECT_CYCLIST    = 2
# Passenger car
uint8 OBJECT_CAR        = 3
# Truck or large vehicle
uint8 OBJECT_TRUCK      = 4
```
