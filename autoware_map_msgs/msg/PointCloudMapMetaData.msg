# List of pointcloud map cell metadata, keyed by the cell ID

# The timestamp when the data is generated or to be published (required)
std_msgs/Header header

# List of pointcloud map cell metadata attached with an ID (required)
PointCloudMapCellMetaDataWithID[] metadata_list
