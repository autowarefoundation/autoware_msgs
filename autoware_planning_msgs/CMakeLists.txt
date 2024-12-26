cmake_minimum_required(VERSION 3.5)
project(autoware_planning_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/LaneletPrimitive.msg"
  "msg/LaneletRoute.msg"
  "msg/LaneletSegment.msg"
  "msg/PoseWithUuidStamped.msg"
  "msg/Trajectory.msg"
  "msg/TrajectoryPoint.msg"
  "msg/Path.msg"
  "msg/PathPoint.msg"
  "msg/AvoidanceDebugMsg.msg"
	"msg/AvoidanceDebugMsgArray.msg"
	"msg/ControlPoint.msg"
	"msg/ExpandStopRange.msg"
	"msg/LateralOffset.msg"
	"msg/PathChangeModule.msg"
	"msg/PathChangeModuleId.msg"
	"msg/PathPointWithLaneId.msg"
	"msg/PathWithLaneId.msg"
	"msg/PlanningFactor.msg"
	"msg/PlanningFactorArray.msg"
	"msg/RerouteAvailability.msg"
	"msg/RouteState.msg"
	"msg/SafetyFactor.msg"
	"msg/SafetyFactorArray.msg"
	"msg/Scenario.msg"
	"msg/StopFactor.msg"
	"msg/StopSpeedExceeded.msg"
	"msg/VelocityLimit.msg"
	"msg/VelocityLimitClearCommand.msg"
	"msg/VelocityLimitConstraints.msg"
  "srv/ClearRoute.srv"
  "srv/SetLaneletRoute.srv"
  "srv/SetWaypointRoute.srv"
  DEPENDENCIES
    autoware_common_msgs
    autoware_perception_msgs
    geometry_msgs
    std_msgs
    unique_identifier_msgs
    nav_msgs
    builtin_interfaces
  ADD_LINTER_TESTS
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
