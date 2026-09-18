# Local projection (no conversion is applied)
string LOCAL = "Local"
# Local Cartesian projection using the UTM zone
string LOCAL_CARTESIAN_UTM = "LocalCartesianUTM"
# Local Cartesian projection
string LOCAL_CARTESIAN = "LocalCartesian"
# Military Grid Reference System projection
string MGRS = "MGRS"
# Transverse Mercator projection
string TRANSVERSE_MERCATOR = "TransverseMercator"

# Type of the map projector, one of the constants above (required)
string projector_type

# WGS84 vertical datum
string WGS84 = "WGS84"
# EGM2008 vertical datum
string EGM2008 = "EGM2008"

# Vertical datum used by the map, one of the constants above (required)
string vertical_datum

# MGRS grid code. This field is valid iff `projector_type` is `MGRS` (optional)
# default: ""
string mgrs_grid

# Origin of the map used for some projector types (required)
# note: altitude is not used, so there is no need to specify it.
# Even if altitude is specified, it will be overwritten with 0.0.
geographic_msgs/GeoPoint map_origin

# Scale factor of the map. This value is fixed for each projector type (required)
# e.g. 0.9996 for TransverseMercator, LocalCartesianUTM and MGRS; 1.0 for Local and LocalCartesian
float32 scale_factor
