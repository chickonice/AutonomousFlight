# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/spacecat/AutonomousFlight/simulation/simulation_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/spacecat/AutonomousFlight/simulation/simulation_ws/build

# Include any dependencies generated for this target.
include mavros/mavros/CMakeFiles/gcs_bridge.dir/depend.make

# Include the progress variables for this target.
include mavros/mavros/CMakeFiles/gcs_bridge.dir/progress.make

# Include the compile flags for this target's objects.
include mavros/mavros/CMakeFiles/gcs_bridge.dir/flags.make

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o: mavros/mavros/CMakeFiles/gcs_bridge.dir/flags.make
mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o: /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/src/gcs_bridge.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o"
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o -c /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/src/gcs_bridge.cpp

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.i"
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/src/gcs_bridge.cpp > CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.i

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.s"
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/src/gcs_bridge.cpp -o CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.s

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.requires:
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.requires

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.provides: mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.requires
	$(MAKE) -f mavros/mavros/CMakeFiles/gcs_bridge.dir/build.make mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.provides.build
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.provides

mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.provides.build: mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o

# Object files for target gcs_bridge
gcs_bridge_OBJECTS = \
"CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o"

# External object files for target gcs_bridge
gcs_bridge_EXTERNAL_OBJECTS =

/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: mavros/mavros/CMakeFiles/gcs_bridge.dir/build.make
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/libmavros.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libclass_loader.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/libPocoFoundation.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libdl.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libroslib.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libtf.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libtf2_ros.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libactionlib.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libmessage_filters.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libroscpp.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libtf2.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/libmavconn.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/librosconsole_bridge.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/librosconsole.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/liblog4cxx.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libeigen_conversions.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/liborocos-kdl.so.1.3.0
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/librostime.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /opt/ros/indigo/lib/libcpp_common.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge: mavros/mavros/CMakeFiles/gcs_bridge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge"
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gcs_bridge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mavros/mavros/CMakeFiles/gcs_bridge.dir/build: /home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/build

mavros/mavros/CMakeFiles/gcs_bridge.dir/requires: mavros/mavros/CMakeFiles/gcs_bridge.dir/src/gcs_bridge.cpp.o.requires
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/requires

mavros/mavros/CMakeFiles/gcs_bridge.dir/clean:
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros && $(CMAKE_COMMAND) -P CMakeFiles/gcs_bridge.dir/cmake_clean.cmake
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/clean

mavros/mavros/CMakeFiles/gcs_bridge.dir/depend:
	cd /home/spacecat/AutonomousFlight/simulation/simulation_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spacecat/AutonomousFlight/simulation/simulation_ws/src /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros /home/spacecat/AutonomousFlight/simulation/simulation_ws/build /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros /home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/CMakeFiles/gcs_bridge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mavros/mavros/CMakeFiles/gcs_bridge.dir/depend
