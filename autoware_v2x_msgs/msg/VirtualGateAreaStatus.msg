# constants for status
uint16 RESERVED = 1
uint16 ACQUIRED = 2
uint16 RELEASED = 3

uint16   status
uint16   sequence
string   type
string   id
string[] gates

builtin_interfaces/Time[<=1] expected_time_arrival

builtin_interfaces/Time stamp
unique_identifier_msgs/UUID vehicle
