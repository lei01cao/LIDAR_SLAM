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
CMAKE_SOURCE_DIR = /home/lei/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lei/catkin_ws/build

# Include any dependencies generated for this target.
include serial/CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include serial/CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include serial/CMakeFiles/serial.dir/flags.make

serial/CMakeFiles/serial.dir/src/serial.cc.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/src/serial.cc.o: /home/lei/catkin_ws/src/serial/src/serial.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lei/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serial/CMakeFiles/serial.dir/src/serial.cc.o"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/serial.cc.o -c /home/lei/catkin_ws/src/serial/src/serial.cc

serial/CMakeFiles/serial.dir/src/serial.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/serial.cc.i"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lei/catkin_ws/src/serial/src/serial.cc > CMakeFiles/serial.dir/src/serial.cc.i

serial/CMakeFiles/serial.dir/src/serial.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/serial.cc.s"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lei/catkin_ws/src/serial/src/serial.cc -o CMakeFiles/serial.dir/src/serial.cc.s

serial/CMakeFiles/serial.dir/src/serial.cc.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/src/serial.cc.o.requires

serial/CMakeFiles/serial.dir/src/serial.cc.o.provides: serial/CMakeFiles/serial.dir/src/serial.cc.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/src/serial.cc.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/src/serial.cc.o.provides

serial/CMakeFiles/serial.dir/src/serial.cc.o.provides.build: serial/CMakeFiles/serial.dir/src/serial.cc.o


serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: /home/lei/catkin_ws/src/serial/src/impl/unix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lei/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object serial/CMakeFiles/serial.dir/src/impl/unix.cc.o"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/unix.cc.o -c /home/lei/catkin_ws/src/serial/src/impl/unix.cc

serial/CMakeFiles/serial.dir/src/impl/unix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/unix.cc.i"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lei/catkin_ws/src/serial/src/impl/unix.cc > CMakeFiles/serial.dir/src/impl/unix.cc.i

serial/CMakeFiles/serial.dir/src/impl/unix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/unix.cc.s"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lei/catkin_ws/src/serial/src/impl/unix.cc -o CMakeFiles/serial.dir/src/impl/unix.cc.s

serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires

serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides: serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides

serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.provides.build: serial/CMakeFiles/serial.dir/src/impl/unix.cc.o


serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: serial/CMakeFiles/serial.dir/flags.make
serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: /home/lei/catkin_ws/src/serial/src/impl/list_ports/list_ports_linux.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lei/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o -c /home/lei/catkin_ws/src/serial/src/impl/list_ports/list_ports_linux.cc

serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lei/catkin_ws/src/serial/src/impl/list_ports/list_ports_linux.cc > CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i

serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s"
	cd /home/lei/catkin_ws/build/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lei/catkin_ws/src/serial/src/impl/list_ports/list_ports_linux.cc -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s

serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires:

.PHONY : serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires

serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides: serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires
	$(MAKE) -f serial/CMakeFiles/serial.dir/build.make serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides.build
.PHONY : serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides

serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.provides.build: serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o


# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/src/serial.cc.o" \
"CMakeFiles/serial.dir/src/impl/unix.cc.o" \
"CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

/home/lei/catkin_ws/devel/lib/libserial.so: serial/CMakeFiles/serial.dir/src/serial.cc.o
/home/lei/catkin_ws/devel/lib/libserial.so: serial/CMakeFiles/serial.dir/src/impl/unix.cc.o
/home/lei/catkin_ws/devel/lib/libserial.so: serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o
/home/lei/catkin_ws/devel/lib/libserial.so: serial/CMakeFiles/serial.dir/build.make
/home/lei/catkin_ws/devel/lib/libserial.so: serial/CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lei/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/lei/catkin_ws/devel/lib/libserial.so"
	cd /home/lei/catkin_ws/build/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serial/CMakeFiles/serial.dir/build: /home/lei/catkin_ws/devel/lib/libserial.so

.PHONY : serial/CMakeFiles/serial.dir/build

serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/src/serial.cc.o.requires
serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/src/impl/unix.cc.o.requires
serial/CMakeFiles/serial.dir/requires: serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o.requires

.PHONY : serial/CMakeFiles/serial.dir/requires

serial/CMakeFiles/serial.dir/clean:
	cd /home/lei/catkin_ws/build/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : serial/CMakeFiles/serial.dir/clean

serial/CMakeFiles/serial.dir/depend:
	cd /home/lei/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lei/catkin_ws/src /home/lei/catkin_ws/src/serial /home/lei/catkin_ws/build /home/lei/catkin_ws/build/serial /home/lei/catkin_ws/build/serial/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial/CMakeFiles/serial.dir/depend

