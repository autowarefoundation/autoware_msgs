# constants for command
uint16 ACQUIRE = 1
uint16 RELEASE = 2

uint16   command
uint16   sequence
string   type
string   id
string[] gates

builtin_interfaces/Time[<=1] expected_time_arrival
