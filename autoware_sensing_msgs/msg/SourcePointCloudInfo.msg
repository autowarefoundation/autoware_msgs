# This message holds metadata information about a source point cloud segment
# within a concatenated point cloud, including its spatial boundaries and structural properties.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d points).
std_msgs/Header header

string topic  # Source topic

# The starting index (inclusive) of the point cloud segment within the concatenated point cloud
uint32 idx_begin

# The ending index (exclusive) of the point cloud segment within the concatenated point cloud
uint32 idx_end
