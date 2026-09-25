# Lanelet map message
# This message contains the binary data of a Lanelet map.
# Also contains the map name, version and format.

# The timestamp when the data is generated or to be published
# And frame of the Lanelet Map origin (probably just "map") (required)
std_msgs/Header header

# Version of the map format. For Lanelet2 map, the "format_version" tag is used.
# This should be in the form of "x.y.z" (optional)
# default: ""
# e.g. "1.1.1"
string version_map_format

# Version of the map. This field is not used by Autoware implementation (optional)
# default: ""
# e.g. "1.0.0"
string version_map

# Name of the map. This field is reserved (optional)
# default: ""
# e.g. "florence-prato-city-center"
string name_map

# Serialized data of the Lanelet map (required)
# note: currently this field is obtained by Boost.Serialization
uint8[] data
