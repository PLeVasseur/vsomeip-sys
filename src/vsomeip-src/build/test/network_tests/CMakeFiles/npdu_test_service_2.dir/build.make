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
include test/network_tests/CMakeFiles/npdu_test_service_2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/network_tests/CMakeFiles/npdu_test_service_2.dir/compiler_depend.make

# Include the progress variables for this target.
include test/network_tests/CMakeFiles/npdu_test_service_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/network_tests/CMakeFiles/npdu_test_service_2.dir/flags.make

test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o: test/network_tests/CMakeFiles/npdu_test_service_2.dir/flags.make
test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/npdu_tests/npdu_test_service.cpp
test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o: test/network_tests/CMakeFiles/npdu_test_service_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o -MF CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o.d -o CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/npdu_tests/npdu_test_service.cpp

test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/npdu_tests/npdu_test_service.cpp > CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.i

test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/npdu_tests/npdu_test_service.cpp -o CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.s

# Object files for target npdu_test_service_2
npdu_test_service_2_OBJECTS = \
"CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o"

# External object files for target npdu_test_service_2
npdu_test_service_2_EXTERNAL_OBJECTS =

test/network_tests/npdu_test_service_2: test/network_tests/CMakeFiles/npdu_test_service_2.dir/npdu_tests/npdu_test_service.cpp.o
test/network_tests/npdu_test_service_2: test/network_tests/CMakeFiles/npdu_test_service_2.dir/build.make
test/network_tests/npdu_test_service_2: libvsomeip3-cfg.so.3.4.10
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
test/network_tests/npdu_test_service_2: lib/libgtest.a
test/network_tests/npdu_test_service_2: test/common/libvsomeip_utilities.so
test/network_tests/npdu_test_service_2: libvsomeip3.so.3.4.10
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
test/network_tests/npdu_test_service_2: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
test/network_tests/npdu_test_service_2: test/network_tests/CMakeFiles/npdu_test_service_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable npdu_test_service_2"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/npdu_test_service_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/network_tests/CMakeFiles/npdu_test_service_2.dir/build: test/network_tests/npdu_test_service_2
.PHONY : test/network_tests/CMakeFiles/npdu_test_service_2.dir/build

test/network_tests/CMakeFiles/npdu_test_service_2.dir/clean:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && $(CMAKE_COMMAND) -P CMakeFiles/npdu_test_service_2.dir/cmake_clean.cmake
.PHONY : test/network_tests/CMakeFiles/npdu_test_service_2.dir/clean

test/network_tests/CMakeFiles/npdu_test_service_2.dir/depend:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests/CMakeFiles/npdu_test_service_2.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/network_tests/CMakeFiles/npdu_test_service_2.dir/depend

