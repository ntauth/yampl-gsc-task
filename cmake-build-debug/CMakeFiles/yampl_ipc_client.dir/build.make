# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/ntauthority/Downloads/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/ntauthority/Downloads/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ntauthority/Desktop/yampl-gsc-task

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/yampl_ipc_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yampl_ipc_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yampl_ipc_client.dir/flags.make

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o: CMakeFiles/yampl_ipc_client.dir/flags.make
CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o -c /home/ntauthority/Desktop/yampl-gsc-task/src/main.cpp

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yampl_ipc_client.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/yampl-gsc-task/src/main.cpp > CMakeFiles/yampl_ipc_client.dir/src/main.cpp.i

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yampl_ipc_client.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/yampl-gsc-task/src/main.cpp -o CMakeFiles/yampl_ipc_client.dir/src/main.cpp.s

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.requires

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.provides: CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/yampl_ipc_client.dir/build.make CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.provides

CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.provides.build: CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o


CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o: CMakeFiles/yampl_ipc_client.dir/flags.make
CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o: ../src/ipc_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o -c /home/ntauthority/Desktop/yampl-gsc-task/src/ipc_client.cpp

CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/yampl-gsc-task/src/ipc_client.cpp > CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.i

CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/yampl-gsc-task/src/ipc_client.cpp -o CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.s

CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.requires:

.PHONY : CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.requires

CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.provides: CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.requires
	$(MAKE) -f CMakeFiles/yampl_ipc_client.dir/build.make CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.provides.build
.PHONY : CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.provides

CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.provides.build: CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o


# Object files for target yampl_ipc_client
yampl_ipc_client_OBJECTS = \
"CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o" \
"CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o"

# External object files for target yampl_ipc_client
yampl_ipc_client_EXTERNAL_OBJECTS =

yampl_ipc_client: CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o
yampl_ipc_client: CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o
yampl_ipc_client: CMakeFiles/yampl_ipc_client.dir/build.make
yampl_ipc_client: CMakeFiles/yampl_ipc_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable yampl_ipc_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yampl_ipc_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yampl_ipc_client.dir/build: yampl_ipc_client

.PHONY : CMakeFiles/yampl_ipc_client.dir/build

CMakeFiles/yampl_ipc_client.dir/requires: CMakeFiles/yampl_ipc_client.dir/src/main.cpp.o.requires
CMakeFiles/yampl_ipc_client.dir/requires: CMakeFiles/yampl_ipc_client.dir/src/ipc_client.cpp.o.requires

.PHONY : CMakeFiles/yampl_ipc_client.dir/requires

CMakeFiles/yampl_ipc_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yampl_ipc_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yampl_ipc_client.dir/clean

CMakeFiles/yampl_ipc_client.dir/depend:
	cd /home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ntauthority/Desktop/yampl-gsc-task /home/ntauthority/Desktop/yampl-gsc-task /home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug /home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug /home/ntauthority/Desktop/yampl-gsc-task/cmake-build-debug/CMakeFiles/yampl_ipc_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yampl_ipc_client.dir/depend

