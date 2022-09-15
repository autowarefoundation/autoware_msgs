cmake_minimum_required(VERSION 3.14)
project(autoware_common_msgs)

find_package(autoware_cmake REQUIRED)
autoware_package()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ResponseStatus.msg"
)

ament_auto_package()
