cmake_minimum_required(VERSION 3.14)
project(autoware_evaluation_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/PathPointV1.msg"
  "msg/PathPointWithLaneIdV1.msg"
  "msg/PathWithLaneIdV1.msg"
  DEPENDENCIES
    "geometry_msgs"
    "std_msgs"
  ADD_LINTER_TESTS
)

ament_auto_package()
