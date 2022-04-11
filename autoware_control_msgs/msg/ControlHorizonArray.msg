# Control message for a predicted future horizon
#
# control_laterals and control_longitudinals should be in equal size
#
#

std_msgs/Header header

ControlLateral[] control_laterals
ControlLongitudinal[] control_longitudinals