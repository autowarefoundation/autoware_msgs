# Timestamp and frame for the simulated object state
std_msgs/Header header

# Stable identifier for add/modify/delete operations
unique_identifier_msgs/UUID id

# Initial pose, twist, and accel with covariance
autoware_simulation_msgs/SimulatedObjectInitialState initial_state

# Semantic class for perception and behavior logic
autoware_perception_msgs/ObjectClassification classification

# Geometric shape for rendering and collision
autoware_perception_msgs/Shape shape

# Max allowed speed for this object [m/s]
float32 max_velocity

# Min allowed speed for this object [m/s]
float32 min_velocity

# Action values:
# - ADD: Add a new simulated object with this id
# - MODIFY: Update an existing simulated object with this id
# - DELETE: Remove a single simulated object by id
# - DELETEALL: Remove all simulated objects
# - REQUEST_PREDICTION: Request prediction for this object
uint8 ADD=0
uint8 MODIFY=1
uint8 DELETE=2
uint8 DELETEALL=3
uint8 REQUEST_PREDICTION=4

# Requested action for this message
uint8 action
