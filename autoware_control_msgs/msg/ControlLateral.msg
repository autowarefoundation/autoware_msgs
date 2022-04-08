# Lateral control message for Ackermann-style platforms
#
# Note regarding tires: If the platform has multiple steering tires, the commands
# given here are for a virtual tire at the average lateral position of the steering tires.
#
# Look up Ackermann Bicycle Model for more details

std_msgs/Header header

# Desired angle of the steering tire in radians
# positive: left
# negative: right
float32 steering_tire_angle

# Desired rate of change of the steering tire angle in radians per second
float32 steering_tire_rotation_rate;