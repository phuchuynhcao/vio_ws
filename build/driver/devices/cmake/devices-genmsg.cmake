# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "devices: 8 messages, 0 services")

set(MSG_I_FLAGS "-Idevices:/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg;-Idevices:/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg;-Idevices:/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg;-Idevices:/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(devices_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" ""
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" ""
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" ""
)

get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_custom_target(_devices_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "devices" "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" "std_msgs/Header:devices/GpsStatus:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)
_generate_msg_cpp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
)

### Generating Services

### Generating Module File
_generate_module_cpp(devices
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(devices_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(devices_generate_messages devices_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_cpp _devices_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(devices_gencpp)
add_dependencies(devices_gencpp devices_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS devices_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)
_generate_msg_eus(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
)

### Generating Services

### Generating Module File
_generate_module_eus(devices
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(devices_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(devices_generate_messages devices_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_eus _devices_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(devices_geneus)
add_dependencies(devices_geneus devices_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS devices_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)
_generate_msg_lisp(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
)

### Generating Services

### Generating Module File
_generate_module_lisp(devices
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(devices_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(devices_generate_messages devices_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_lisp _devices_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(devices_genlisp)
add_dependencies(devices_genlisp devices_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS devices_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)
_generate_msg_nodejs(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
)

### Generating Services

### Generating Module File
_generate_module_nodejs(devices
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(devices_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(devices_generate_messages devices_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_nodejs _devices_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(devices_gennodejs)
add_dependencies(devices_gennodejs devices_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS devices_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)
_generate_msg_py(devices
  "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
)

### Generating Services

### Generating Module File
_generate_module_py(devices
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(devices_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(devices_generate_messages devices_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/slider/msg/SliderSetting.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanHeader.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/SpanNav.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/span/msg/RtkMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/wheel/msg/WheelMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsStatus.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/phuccao/OKVIS/vio_ws/src/driver/devices/gps/msg/GpsMsg.msg" NAME_WE)
add_dependencies(devices_generate_messages_py _devices_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(devices_genpy)
add_dependencies(devices_genpy devices_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS devices_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/devices
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(devices_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(devices_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/devices
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(devices_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(devices_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/devices
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(devices_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(devices_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/devices
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(devices_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(devices_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/devices
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(devices_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(devices_generate_messages_py geometry_msgs_generate_messages_py)
endif()
