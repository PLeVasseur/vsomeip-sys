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

# Utility rule file for symlink_restart_routing_test_autoconfig.json_9084.

# Include any custom commands dependencies for this target.
include test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/compiler_depend.make

# Include the progress variables for this target.
include test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/progress.make

test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084: test/network_tests/restart_routing_test_autoconfig.json

test/network_tests/restart_routing_test_autoconfig.json: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/restart_routing_tests/restart_routing_test_autoconfig.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying \"/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/restart_routing_tests/restart_routing_test_autoconfig.json\" into build directory"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && /snap/cmake/1384/bin/cmake -E copy /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests/restart_routing_tests/restart_routing_test_autoconfig.json /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests/restart_routing_test_autoconfig.json

symlink_restart_routing_test_autoconfig.json_9084: test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084
symlink_restart_routing_test_autoconfig.json_9084: test/network_tests/restart_routing_test_autoconfig.json
symlink_restart_routing_test_autoconfig.json_9084: test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/build.make
.PHONY : symlink_restart_routing_test_autoconfig.json_9084

# Rule to build all files generated by this target.
test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/build: symlink_restart_routing_test_autoconfig.json_9084
.PHONY : test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/build

test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/clean:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests && $(CMAKE_COMMAND) -P CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/cmake_clean.cmake
.PHONY : test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/clean

test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/depend:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/test/network_tests /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/network_tests/CMakeFiles/symlink_restart_routing_test_autoconfig.json_9084.dir/depend
