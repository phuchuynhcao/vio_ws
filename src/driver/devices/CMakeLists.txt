cmake_minimum_required(VERSION 2.8.3)
project(devices)

# Use c++11 compiler to use 'modern' functions
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  rospy
  roscpp
  rosbag
  std_msgs
  sensor_msgs
  geometry_msgs
#   serial
)

# Use Eigen library
set(Eigen_INCLUDE_DIRS /usr/include/eigen3)

################################################
## Declare ROS messages, services and actions ##
################################################
 add_message_files(
   DIRECTORY slider/msg 
   FILES SliderMsg.msg SliderSetting.msg
)

add_message_files(
  DIRECTORY span/msg
  FILES SpanHeader.msg SpanNav.msg RtkMsg.msg
)

add_message_files(
  DIRECTORY wheel/msg
  FILES WheelMsg.msg
)

add_message_files(
  DIRECTORY gps/msg
  FILES GpsStatus.msg GpsMsg.msg
)

generate_messages(
  DEPENDENCIES std_msgs geometry_msgs
)

###################################
## catkin specific configuration ##
###################################
# If Linux, add rt and pthread
set(rt_LIBRARIES rt)
set(pthread_LIBRARIES pthread)

catkin_package(
  LIBRARIES ${PROJECT_NAME}
  INCLUDE_DIRS serial/include
  DEPENDS rt pthread
  CATKIN_DEPENDS message_runtime
)

###########
## Build ##
###########
## Include 
include_directories(${catkin_INCLUDE_DIRS}  ${Eigen_INCLUDE_DIRS}
  imu/include
  serial/include
  trigger/include
  span/include
  wheel/include
  rtk/include
  gps/include
)

## Sources
set(serial_SRCS
    serial/src/serial.cc
    serial/include/serial/serial.h
    serial/include/serial/v8stdint.h
)

# If unix
list(APPEND serial_SRCS serial/src/impl/unix.cc)
list(APPEND serial_SRCS serial/src/impl/list_ports/list_ports_linux.cc)

## Add library
add_library(${PROJECT_NAME} ${serial_SRCS})
target_link_libraries(${PROJECT_NAME} 
    rt 
    pthread 
    ${catkin_LIBRARIES}
)

## The actual build
set(imu_SRCS
    imu/src/imu_node.cpp 
    imu/src/ImuDriver.cpp
    imu/include/imu/ImuDriver.hpp
)

set(trigger_SRCS
    trigger/src/trigger_node.cpp 
    trigger/src/TriggerDriver.cpp
    trigger/include/TriggerDriver.hpp
)

set(span_SRCS
    span/src/span_node.cpp 
    span/src/SpanDriver.cpp
    span/include/SpanDriver.hpp
)

set(wheel_SRCS
    wheel/src/wheel_node.cpp 
    wheel/src/WheelDriver.cpp
    wheel/include/WheelDriver.hpp
)

set(gps_SRCS
    gps/src/gps_node.cpp 
    gps/src/GpsDriver.cpp
    gps/include/GpsDriver.hpp
    gps/include/geodetic_conv.hpp
)

add_executable(imu_node ${imu_SRCS})
add_dependencies(imu_node ${PROJECT_NAME})
target_link_libraries(imu_node ${PROJECT_NAME})

add_executable(trigger_node ${trigger_SRCS})
add_dependencies(trigger_node ${PROJECT_NAME})
target_link_libraries(trigger_node ${PROJECT_NAME})

add_executable(span_node ${span_SRCS})
add_dependencies(span_node ${PROJECT_NAME})
target_link_libraries(span_node ${PROJECT_NAME})

add_executable(wheel_node ${wheel_SRCS})
add_dependencies(wheel_node ${PROJECT_NAME})
target_link_libraries(wheel_node ${PROJECT_NAME})

add_executable(gps_node ${gps_SRCS})
add_dependencies(gps_node ${PROJECT_NAME})
target_link_libraries(gps_node ${PROJECT_NAME})

#############
## Install ##
#############
## Install executable
#install(TARGETS slider_node
#    ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#    LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)

## Install headers
#install(FILES include/SliderDriver.h
#  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#)
