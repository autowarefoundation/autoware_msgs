# constants for behavior
uint16 UNKNOWN = 0
uint16 NONE = 1
uint16 SLOW_DOWN = 2
uint16 STOP = 3
uint16 LEFT_SHIFT = 4
uint16 RIGHT_SHIFT = 5

# variables
string module

bool is_driving_forward

autoware_planning_msgs/ControlPoint[] control_points

uint16 behavior

string detail

autoware_planning_msgs/SafetyFactorArray safety_factors
