# GNSS(Global Navigation Satellite System) INS(Inertial Navigation System) position message
#
# Represents a 3D position in a global coordinate system.

# Latitude [deg]. Positive is north of equator; negative is south.
float64 latitude_deg

# Longitude [deg]. Positive is east of prime meridian; negative is west.
float64 longitude_deg

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Root mean square error of the position [m]
float32 rmse_position_east
float32 rmse_position_north
float32 rmse_position_up
