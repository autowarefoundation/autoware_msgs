# Common classes with autoware_perception_msgs/msg/ObjectClassification.msg
uint32 UNKNOWN = 0
uint32 CAR = 1
uint32 TRUCK = 2
uint32 BUS = 3
uint32 TRAILER = 4
uint32 MOTORCYCLE = 5
uint32 BICYCLE = 6
uint32 PEDESTRIAN = 7

# Radar specific classes
uint32 ANIMAL = 8
uint32 HAZARD = 9
uint32 OVER_DRIVABLE = 10
uint32 UNDER_DRIVABLE = 11

uint32 label
float32 probability
