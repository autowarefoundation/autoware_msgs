# GNSS(Global Navigation Satellite System) INS(Inertial Navigation System) position message
#
# Represents a 3D position in a global coordinate system with coordinate frame and timestamp.

# Timestamp this reading was received by the GNSS sensor
# Frame is expected to be /earth
std_msgs/Header header

GnssInsPosition position
