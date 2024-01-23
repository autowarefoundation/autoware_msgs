cmake_minimum_required(VERSION 3.5)
project(autoware_planning_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/LaneletPrimitive.msg"
  "msg/LaneletRoute.msg"
  "msg/LaneletSegment.msg"
  "msg/Path.msg"
  "msg/PathPoint.msg"
  "msg/PathPointWithLaneId.msg"
  "msg/PathWithLaneId.msg"
  "msg/PoseWithUuidStamped.msg"
  "msg/RouteState.msg"
  "msg/Trajectory.msg"
  "msg/TrajectoryPoint.msg"
  "srv/ClearRoute.srv"
  "srv/SetLaneletRoute.srv"
  "srv/SetWaypointRoute.srv"
  DEPENDENCIES
    autoware_common_msgs
    builtin_interfaces
    geometry_msgs
    std_msgs
    unique_identifier_msgs
  ADD_LINTER_TESTS
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
