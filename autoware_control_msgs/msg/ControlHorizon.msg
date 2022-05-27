# Control messages predicted for a future horizon
#
# Control messages are ordered from near to far future [0 to N) with time_step_ms increments.
#
# First element of the array contains the control signals at the stamp of this message.
#
# The stamps in the controls array can be ignored.

builtin_interfaces/Time stamp

float32 time_step_ms

Control[] controls
