# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/phuccao/OKVIS/vio_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/phuccao/OKVIS/vio_ws/build

# Include any dependencies generated for this target.
include okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/depend.make

# Include the progress variables for this target.
include okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/flags.make

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.o: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/flags.make
okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.o: /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Time.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.o"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_time.dir/src/Time.cpp.o -c /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Time.cpp

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_time.dir/src/Time.cpp.i"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Time.cpp > CMakeFiles/okvis_time.dir/src/Time.cpp.i

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_time.dir/src/Time.cpp.s"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Time.cpp -o CMakeFiles/okvis_time.dir/src/Time.cpp.s

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.o: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/flags.make
okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.o: /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Duration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.o"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_time.dir/src/Duration.cpp.o -c /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Duration.cpp

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_time.dir/src/Duration.cpp.i"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Duration.cpp > CMakeFiles/okvis_time.dir/src/Duration.cpp.i

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_time.dir/src/Duration.cpp.s"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time/src/Duration.cpp -o CMakeFiles/okvis_time.dir/src/Duration.cpp.s

# Object files for target okvis_time
okvis_time_OBJECTS = \
"CMakeFiles/okvis_time.dir/src/Time.cpp.o" \
"CMakeFiles/okvis_time.dir/src/Duration.cpp.o"

# External object files for target okvis_time
okvis_time_EXTERNAL_OBJECTS =

/home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Time.cpp.o
/home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/src/Duration.cpp.o
/home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/build.make
/home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a: okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library /home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && $(CMAKE_COMMAND) -P CMakeFiles/okvis_time.dir/cmake_clean_target.cmake
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_time.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/build: /home/phuccao/OKVIS/vio_ws/devel/lib/libokvis_time.a

.PHONY : okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/build

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/clean:
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time && $(CMAKE_COMMAND) -P CMakeFiles/okvis_time.dir/cmake_clean.cmake
.PHONY : okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/clean

okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/depend:
	cd /home/phuccao/OKVIS/vio_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/phuccao/OKVIS/vio_ws/src /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis/okvis_time /home/phuccao/OKVIS/vio_ws/build /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_ros/okvis/okvis_time/CMakeFiles/okvis_time.dir/depend

