# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1384/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1384/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build

# Include any dependencies generated for this target.
include test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/flags.make

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/flags.make
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/applet.cpp
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o -MF CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o.d -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/applet.cpp

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/applet.cpp > CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.i

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/applet.cpp -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.s

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/flags.make
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/client.cpp
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o -MF CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o.d -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/client.cpp

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/client.cpp > CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.i

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/client.cpp -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.s

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/flags.make
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/server.cpp
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o -MF CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o.d -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/server.cpp

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/server.cpp > CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.i

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/server.cpp -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.s

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/flags.make
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/main.cpp
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o -MF CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o.d -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/main.cpp

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/main.cpp > CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.i

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test/main.cpp -o CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.s

# Object files for target internal_routing_disabled_acceptance_test
internal_routing_disabled_acceptance_test_OBJECTS = \
"CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o" \
"CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o" \
"CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o" \
"CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o"

# External object files for target internal_routing_disabled_acceptance_test
internal_routing_disabled_acceptance_test_EXTERNAL_OBJECTS =

test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/applet.cpp.o
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/client.cpp.o
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/server.cpp.o
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/main.cpp.o
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/build.make
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: lib/libgtest.a
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: libvsomeip3.so.3.4.10
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test: test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable internal_routing_disabled_acceptance_test"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/internal_routing_disabled_acceptance_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/build: test/internal_routing_disabled_acceptance_test/internal_routing_disabled_acceptance_test
.PHONY : test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/build

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/clean:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test && $(CMAKE_COMMAND) -P CMakeFiles/internal_routing_disabled_acceptance_test.dir/cmake_clean.cmake
.PHONY : test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/clean

test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/depend:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/internal_routing_disabled_acceptance_test /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/internal_routing_disabled_acceptance_test/CMakeFiles/internal_routing_disabled_acceptance_test.dir/depend

