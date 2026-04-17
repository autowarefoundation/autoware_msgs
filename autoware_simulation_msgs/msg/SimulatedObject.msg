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

# Lifecycle action for this object:
# - ADD: Add a new simulated object with this id
# - MODIFY: Update an existing simulated object with this id
# - DELETE: Remove a single simulated object by id
# - DELETE_ALL: Remove all simulated objects
uint8 ADD=0
uint8 MODIFY=1
uint8 DELETE=2
uint8 DELETE_ALL=3
uint8 action

# Movement model used after spawning
uint8 STRAIGHT_LINE=0
uint8 PREDICTED_PATH=1
uint8 movement_model
