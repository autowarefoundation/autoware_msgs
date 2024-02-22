cmake_minimum_required(VERSION 3.14)
project(autoware_optional_msgs)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

set(msg_files
  "msg/PublishedTime.msg")

set(msg_dependencies
  builtin_interfaces)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES ${msg_dependencies}
)

ament_auto_package()
