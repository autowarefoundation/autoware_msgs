# Projector type
string LOCAL = "Local"
string LOCAL_CARTESIAN_UTM = "LocalCartesianUTM"
string LOCAL_CARTESIAN = "LocalCartesian"
string MGRS = "MGRS"
string TRANSVERSE_MERCATOR = "TransverseMercator"
string projector_type

# Vertical datum
string WGS84 = "WGS84"
string EGM2008 = "EGM2008"
string vertical_datum

# Used for MGRS map
string mgrs_grid

# Used for some map projection types
# altitude may not be in ellipsoid height
geographic_msgs/GeoPoint map_origin
