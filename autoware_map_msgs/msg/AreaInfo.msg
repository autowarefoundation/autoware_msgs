# Area info used as a query in map loading service
# Note: this only supports spherical area message for now

uint8 CYLINDER=0
uint8 ALL_AREA=1

uint8 type
geometry_msgs/Point center
float32 radius
