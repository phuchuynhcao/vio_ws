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
include okvis_ros/CMakeFiles/okvis_ros.dir/depend.make

# Include the progress variables for this target.
include okvis_ros/CMakeFiles/okvis_ros.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_ros/CMakeFiles/okvis_ros.dir/flags.make

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o: okvis_ros/CMakeFiles/okvis_ros.dir/flags.make
okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o: /home/nguyen/vio_ws/src/okvis_ros/src/Subscriber.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o -c /home/nguyen/vio_ws/src/okvis_ros/src/Subscriber.cpp

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.i"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyen/vio_ws/src/okvis_ros/src/Subscriber.cpp > CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.i

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.s"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyen/vio_ws/src/okvis_ros/src/Subscriber.cpp -o CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.s

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.requires:

.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.requires

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.provides: okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.requires
	$(MAKE) -f okvis_ros/CMakeFiles/okvis_ros.dir/build.make okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.provides.build
.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.provides

okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.provides.build: okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o


okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o: okvis_ros/CMakeFiles/okvis_ros.dir/flags.make
okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o: /home/nguyen/vio_ws/src/okvis_ros/src/Publisher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o -c /home/nguyen/vio_ws/src/okvis_ros/src/Publisher.cpp

okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_ros.dir/src/Publisher.cpp.i"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyen/vio_ws/src/okvis_ros/src/Publisher.cpp > CMakeFiles/okvis_ros.dir/src/Publisher.cpp.i

okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_ros.dir/src/Publisher.cpp.s"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyen/vio_ws/src/okvis_ros/src/Publisher.cpp -o CMakeFiles/okvis_ros.dir/src/Publisher.cpp.s

okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.requires:

.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.requires

okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.provides: okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.requires
	$(MAKE) -f okvis_ros/CMakeFiles/okvis_ros.dir/build.make okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.provides.build
.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.provides

okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.provides.build: okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o


okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o: okvis_ros/CMakeFiles/okvis_ros.dir/flags.make
okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o: /home/nguyen/vio_ws/src/okvis_ros/src/RosParametersReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o -c /home/nguyen/vio_ws/src/okvis_ros/src/RosParametersReader.cpp

okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.i"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyen/vio_ws/src/okvis_ros/src/RosParametersReader.cpp > CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.i

okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.s"
	cd /home/nguyen/vio_ws/build/okvis_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyen/vio_ws/src/okvis_ros/src/RosParametersReader.cpp -o CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.s

okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.requires:

.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.requires

okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.provides: okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.requires
	$(MAKE) -f okvis_ros/CMakeFiles/okvis_ros.dir/build.make okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.provides.build
.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.provides

okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.provides.build: okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o


# Object files for target okvis_ros
okvis_ros_OBJECTS = \
"CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o" \
"CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o" \
"CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o"

# External object files for target okvis_ros
okvis_ros_EXTERNAL_OBJECTS =

/home/nguyen/vio_ws/devel/lib/libokvis_ros.a: okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o
/home/nguyen/vio_ws/devel/lib/libokvis_ros.a: okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o
/home/nguyen/vio_ws/devel/lib/libokvis_ros.a: okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o
/home/nguyen/vio_ws/devel/lib/libokvis_ros.a: okvis_ros/CMakeFiles/okvis_ros.dir/build.make
/home/nguyen/vio_ws/devel/lib/libokvis_ros.a: okvis_ros/CMakeFiles/okvis_ros.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nguyen/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library /home/nguyen/vio_ws/devel/lib/libokvis_ros.a"
	cd /home/nguyen/vio_ws/build/okvis_ros && $(CMAKE_COMMAND) -P CMakeFiles/okvis_ros.dir/cmake_clean_target.cmake
	cd /home/nguyen/vio_ws/build/okvis_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_ros.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_ros/CMakeFiles/okvis_ros.dir/build: /home/nguyen/vio_ws/devel/lib/libokvis_ros.a

.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/build

okvis_ros/CMakeFiles/okvis_ros.dir/requires: okvis_ros/CMakeFiles/okvis_ros.dir/src/Subscriber.cpp.o.requires
okvis_ros/CMakeFiles/okvis_ros.dir/requires: okvis_ros/CMakeFiles/okvis_ros.dir/src/Publisher.cpp.o.requires
okvis_ros/CMakeFiles/okvis_ros.dir/requires: okvis_ros/CMakeFiles/okvis_ros.dir/src/RosParametersReader.cpp.o.requires

.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/requires

okvis_ros/CMakeFiles/okvis_ros.dir/clean:
	cd /home/nguyen/vio_ws/build/okvis_ros && $(CMAKE_COMMAND) -P CMakeFiles/okvis_ros.dir/cmake_clean.cmake
.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/clean

okvis_ros/CMakeFiles/okvis_ros.dir/depend:
	cd /home/nguyen/vio_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nguyen/vio_ws/src /home/nguyen/vio_ws/src/okvis_ros /home/nguyen/vio_ws/build /home/nguyen/vio_ws/build/okvis_ros /home/nguyen/vio_ws/build/okvis_ros/CMakeFiles/okvis_ros.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_ros/CMakeFiles/okvis_ros.dir/depend
