# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nguyen/vio_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nguyen/vio_ws/build

# Include any dependencies generated for this target.
include okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/depend.make

# Include the progress variables for this target.
include okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/flags.make

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/flags.make
okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o: /home/nguyen/vio_ws/src/okvis_ros/okvis/okvis_apps/src/okvis_app_synchronous.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o"
	cd /home/nguyen/vio_ws/build/okvis_ros/okvis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o -c /home/nguyen/vio_ws/src/okvis_ros/okvis/okvis_apps/src/okvis_app_synchronous.cpp

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.i"
	cd /home/nguyen/vio_ws/build/okvis_ros/okvis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyen/vio_ws/src/okvis_ros/okvis/okvis_apps/src/okvis_app_synchronous.cpp > CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.i

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.s"
	cd /home/nguyen/vio_ws/build/okvis_ros/okvis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyen/vio_ws/src/okvis_ros/okvis/okvis_apps/src/okvis_app_synchronous.cpp -o CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.s

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.requires:

.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.requires

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.provides: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.requires
	$(MAKE) -f okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/build.make okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.provides.build
.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.provides

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.provides.build: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o


# Object files for target okvis_app_synchronous
okvis_app_synchronous_OBJECTS = \
"CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o"

# External object files for target okvis_app_synchronous
okvis_app_synchronous_EXTERNAL_OBJECTS =

/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/build.make
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_util.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_kinematics.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_time.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_cv.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_common.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_ceres.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_timing.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_matcher.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_frontend.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_multisensor_processing.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_frontend.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_ceres.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_common.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_cv.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_kinematics.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_time.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_timing.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_matcher.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /home/nguyen/vio_ws/devel/lib/libokvis_util.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: lib/libbrisk.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: lib/libagast.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: lib/libceres.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libspqr.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libtbb.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libcholmod.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libccolamd.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libcamd.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libcolamd.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libamd.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/liblapack.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/libf77blas.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/libatlas.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/libf77blas.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/libatlas.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/librt.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libcxsparse.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: lib/libopengv.a
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: /usr/lib/x86_64-linux-gnu/libglog.so
/home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous"
	cd /home/nguyen/vio_ws/build/okvis_ros/okvis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_app_synchronous.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/build: /home/nguyen/vio_ws/devel/lib/okvis_ros/okvis_app_synchronous

.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/build

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/requires: okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/okvis_apps/src/okvis_app_synchronous.cpp.o.requires

.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/requires

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/clean:
	cd /home/nguyen/vio_ws/build/okvis_ros/okvis && $(CMAKE_COMMAND) -P CMakeFiles/okvis_app_synchronous.dir/cmake_clean.cmake
.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/clean

okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/depend:
	cd /home/nguyen/vio_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nguyen/vio_ws/src /home/nguyen/vio_ws/src/okvis_ros/okvis /home/nguyen/vio_ws/build /home/nguyen/vio_ws/build/okvis_ros/okvis /home/nguyen/vio_ws/build/okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_ros/okvis/CMakeFiles/okvis_app_synchronous.dir/depend

