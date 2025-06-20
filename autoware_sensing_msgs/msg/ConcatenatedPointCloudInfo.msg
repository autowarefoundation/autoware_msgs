# This message holds information about a concatenated point cloud that combines multiple source
# point clouds, including the overall point cloud structure and metadata for each source segment.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d points).
std_msgs/Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
sensor_msgs/PointField[] fields

bool is_bigendian                                # Is this data bigendian?
uint32 point_step                                # Length of a point in bytes
uint32 row_step                                  # Length of a row in bytes

bool is_dense                                    # True if there are no invalid points

bool concatenation_success                       # Whether concatenation was successful
bool used_advanced_mode                          # Whether used advanced mode
builtin_interfaces/Time min_reference_timestamp  # Min reference timestamp if used advanced mode
builtin_interfaces/Time max_reference_timestamp  # Max reference timestamp if used advanced mode

SourcePointCloudInfo[] source_info               # Meta information of input point clouds
