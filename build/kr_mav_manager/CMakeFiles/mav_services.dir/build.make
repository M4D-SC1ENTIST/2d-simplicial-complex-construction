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
CMAKE_SOURCE_DIR = /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xechariah/projects/entry_level_project/build/kr_mav_manager

# Include any dependencies generated for this target.
include CMakeFiles/mav_services.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mav_services.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mav_services.dir/flags.make

CMakeFiles/mav_services.dir/src/mav_services.cpp.o: CMakeFiles/mav_services.dir/flags.make
CMakeFiles/mav_services.dir/src/mav_services.cpp.o: /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager/src/mav_services.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xechariah/projects/entry_level_project/build/kr_mav_manager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mav_services.dir/src/mav_services.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mav_services.dir/src/mav_services.cpp.o -c /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager/src/mav_services.cpp

CMakeFiles/mav_services.dir/src/mav_services.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mav_services.dir/src/mav_services.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager/src/mav_services.cpp > CMakeFiles/mav_services.dir/src/mav_services.cpp.i

CMakeFiles/mav_services.dir/src/mav_services.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mav_services.dir/src/mav_services.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager/src/mav_services.cpp -o CMakeFiles/mav_services.dir/src/mav_services.cpp.s

# Object files for target mav_services
mav_services_OBJECTS = \
"CMakeFiles/mav_services.dir/src/mav_services.cpp.o"

# External object files for target mav_services
mav_services_EXTERNAL_OBJECTS =

/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: CMakeFiles/mav_services.dir/src/mav_services.cpp.o
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: CMakeFiles/mav_services.dir/build.make
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/libkr_mav_manager.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/libactionlib.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/libroscpp.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/librosconsole.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/librostime.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /opt/ros/noetic/lib/libcpp_common.so
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services: CMakeFiles/mav_services.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xechariah/projects/entry_level_project/build/kr_mav_manager/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mav_services.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mav_services.dir/build: /home/xechariah/projects/entry_level_project/devel/.private/kr_mav_manager/lib/kr_mav_manager/mav_services

.PHONY : CMakeFiles/mav_services.dir/build

CMakeFiles/mav_services.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mav_services.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mav_services.dir/clean

CMakeFiles/mav_services.dir/depend:
	cd /home/xechariah/projects/entry_level_project/build/kr_mav_manager && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager /home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_manager /home/xechariah/projects/entry_level_project/build/kr_mav_manager /home/xechariah/projects/entry_level_project/build/kr_mav_manager /home/xechariah/projects/entry_level_project/build/kr_mav_manager/CMakeFiles/mav_services.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mav_services.dir/depend
