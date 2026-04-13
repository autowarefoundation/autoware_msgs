cmake_minimum_required(VERSION 3.14)
project(autoware_simulation_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/SimulatedObject.msg"
  "msg/SimulatedObjectInitialState.msg"

  DEPENDENCIES
    std_msgs
    geometry_msgs
    unique_identifier_msgs
    autoware_perception_msgs

  ADD_LINTER_TESTS
)

ament_auto_package()
