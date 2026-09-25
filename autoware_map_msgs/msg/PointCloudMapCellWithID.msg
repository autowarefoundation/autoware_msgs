# The message contains a pointcloud data attached with an ID

# Unique ID of the pointcloud map cell (required)
string cell_id

# Pointcloud data of the map cell (required)
sensor_msgs/PointCloud2 pointcloud

# Metadata of the pointcloud map cell (required)
PointCloudMapCellMetaData metadata
