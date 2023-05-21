cmake_minimum_required(VERSION 2.8.3)
project(test)

# Use c++11 compiler to use 'modern' functions
add_compile_options(-std=c++11)

find_package(catkin REQUIRED
  roscpp
  sensor_msgs
  std_msgs
  rosbag
  devices
)

catkin_package()

include_directories(${catkin_INCLUDE_DIRS})

add_executable(convert_bag_to_csv src/ConvertBagToCsv.cpp)
target_link_libraries(convert_bag_to_csv ${catkin_LIBRARIES})

add_executable(correct_camera_stamp src/CorrectCameraStamp.cpp)
target_link_libraries(correct_camera_stamp ${catkin_LIBRARIES})

add_executable(convert_bag_to_log src/ConvertBagToLog.cpp)
target_link_libraries(convert_bag_to_log ${catkin_LIBRARIES})

add_executable(downsample_dataset src/DownSampleDataset.cpp)
target_link_libraries(downsample_dataset ${catkin_LIBRARIES})