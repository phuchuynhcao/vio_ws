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

# Utility rule file for ceres_external.

# Include the progress variables for this target.
include okvis_ros/okvis/CMakeFiles/ceres_external.dir/progress.make

okvis_ros/okvis/CMakeFiles/ceres_external: okvis_ros/okvis/CMakeFiles/ceres_external-complete


okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-install
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-mkdir
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-update
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-patch
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-build
okvis_ros/okvis/CMakeFiles/ceres_external-complete: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/CMakeFiles
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/CMakeFiles/ceres_external-complete
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-done

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-install: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && make install
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-install

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/tmp
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E make_directory /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-mkdir

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-gitinfo.txt
okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src && /usr/bin/cmake -P /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/tmp/ceres_external-gitclone.cmake
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-update: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external && /usr/bin/cmake -E echo_append
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-update

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-patch: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E echo_append
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-patch

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure: okvis_ros/okvis/ceres/tmp/ceres_external-cfgcmd.txt
okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-update
okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && /usr/bin/cmake -DCMAKE_INSTALL_PREFIX:PATH=/home/phuccao/OKVIS/vio_ws/build -DCMAKE_BUILD_TYPE:STRING=Release "-DCMAKE_CXX_FLAGS= -march=native -Wall -std=c++11 -fPIC -mssse3" -DBUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTING:BOOL=OFF "-GUnix Makefiles" /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure

okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-build: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/phuccao/OKVIS/vio_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ceres_external'"
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && make -j3
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-build && /usr/bin/cmake -E touch /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-build

ceres_external: okvis_ros/okvis/CMakeFiles/ceres_external
ceres_external: okvis_ros/okvis/CMakeFiles/ceres_external-complete
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-install
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-mkdir
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-download
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-update
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-patch
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-configure
ceres_external: okvis_ros/okvis/ceres/src/ceres_external-stamp/ceres_external-build
ceres_external: okvis_ros/okvis/CMakeFiles/ceres_external.dir/build.make

.PHONY : ceres_external

# Rule to build all files generated by this target.
okvis_ros/okvis/CMakeFiles/ceres_external.dir/build: ceres_external

.PHONY : okvis_ros/okvis/CMakeFiles/ceres_external.dir/build

okvis_ros/okvis/CMakeFiles/ceres_external.dir/clean:
	cd /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis && $(CMAKE_COMMAND) -P CMakeFiles/ceres_external.dir/cmake_clean.cmake
.PHONY : okvis_ros/okvis/CMakeFiles/ceres_external.dir/clean

okvis_ros/okvis/CMakeFiles/ceres_external.dir/depend:
	cd /home/phuccao/OKVIS/vio_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/phuccao/OKVIS/vio_ws/src /home/phuccao/OKVIS/vio_ws/src/okvis_ros/okvis /home/phuccao/OKVIS/vio_ws/build /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis /home/phuccao/OKVIS/vio_ws/build/okvis_ros/okvis/CMakeFiles/ceres_external.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_ros/okvis/CMakeFiles/ceres_external.dir/depend

