# constants for command
uint16 ACQUIRE = 1
uint16 RELEASE = 2

# variables for lock
uint16   command
uint16   sequence  # Used to check correspondence with commands.
string   type      # Used to select destination or driver.
string   id        # Target area ID.
string[] gates     # Entry and exit gate ID.

# variables for scheduling
builtin_interfaces/Time[<=1] expected_time_arrival
