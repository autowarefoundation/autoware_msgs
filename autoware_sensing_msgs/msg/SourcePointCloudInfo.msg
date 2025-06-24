# This message holds metadata information about a source point cloud segment
# within a concatenated point cloud, including its spatial boundaries and structural properties.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d points).
std_msgs/Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

string topic           # Source topic

# The starting index (inclusive) of the point cloud segment within the concatenated point cloud
uint32 idx_begin

# The ending index (exclusive) of the point cloud segment within the full point cloud
uint32 idx_end
