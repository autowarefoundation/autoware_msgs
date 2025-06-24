# This message holds information about a concatenated point cloud that combines multiple source
# point clouds, including the overall point cloud structure and metadata for each source segment.

# Available matching strategies for source point clouds concatenation
uint8 STRATEGY_NAIVE = 0
uint8 STRATEGY_ADVANCED = 1

# The oldest stamp of the sensor that was concatenated, and the coordinate frame ID (for 3d points).
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
uint8 matching_strategy                          # Strategy used for concatenation

# Raw data of concatenation config, relevant to matching_strategy field.
uint8[] matching_strategy_config

SourcePointCloudInfo[] source_info               # Meta information of input point clouds
