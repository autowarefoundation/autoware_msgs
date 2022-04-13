# Longitudinal control message
#
# Positive values represent forward motion (+X)
# Negative values represent backward motion (-X)

builtin_interfaces/Time stamp

# Desired vehicle speed in m/s
float32 speed;

# Desired vehicle acceleration in m/s²
float32 acceleration;

# Desired vehicle jerk in m/s³
float32 jerk;