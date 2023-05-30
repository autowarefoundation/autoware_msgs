# HD Map message

uint8 MAP_FORMAT_LANELET2 = 0

# Header with timestamp when the message is published
std_msgs/Header header

# HADMap format identifier, allows supporting multiple map formats
uint8 map_format

# Version of map format. Keep as empty string if unnecssary
string format_version

# Version of map. Keep as empty empty if unnecessary
string map_version

# Binary map data
uint8[] data
