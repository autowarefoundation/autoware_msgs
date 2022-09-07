cmake_minimum_required(VERSION 3.5)
project(autoware_planning_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/VectorMapPrimitive.msg"
  "msg/VectorMapRoute.msg"
  "msg/VectorMapSegment.msg"
  "srv/SetRoute.srv"
  DEPENDENCIES
    autoware_ad_api_msgs
    std_msgs
  ADD_LINTER_TESTS
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
