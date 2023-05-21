# generated from genmsg/cmake/pkg-msg-paths.cmake.installspace.in

_prepend_path("${devices_DIR}/.." "slider/msg;span/msg;wheel/msg;gps/msg" devices_MSG_INCLUDE_DIRS UNIQUE)
set(devices_MSG_DEPENDENCIES std_msgs;geometry_msgs)
