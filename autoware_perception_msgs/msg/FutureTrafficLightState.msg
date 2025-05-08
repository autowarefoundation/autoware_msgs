# Absolute time this state is expected
builtin_interfaces/Time stamp

# Valid signals at this time
autoware_perception_msgs/TrafficLightElement[] simultaneous_elements

# Confidence level [0.0–1.0]
float32 reliability

# Source of information e.g., "V2I_SPAT", "V2V", etc.
string information_source
