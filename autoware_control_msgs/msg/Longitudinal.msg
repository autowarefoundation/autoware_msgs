# Longitudinal control message
#
# Values are in the base_link frame in X axis
#
# Positive values represent forward motion (+X)
# Negative values represent backward motion (-X)

builtin_interfaces/Time stamp

# Desired vehicle velocity in in m/s
float32 velocity;

# Desired vehicle acceleration in m/s²
float32 acceleration;

# Desired vehicle jerk in m/s³
float32 jerk;

# Controller has filled in the acceleration value
bool is_defined_acceleration;

# Controller has filled in the jerk value
bool is_defined_jerk;
