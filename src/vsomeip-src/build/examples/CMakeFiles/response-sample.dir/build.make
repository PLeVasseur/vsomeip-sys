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
include examples/CMakeFiles/response-sample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/response-sample.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/response-sample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/response-sample.dir/flags.make

examples/CMakeFiles/response-sample.dir/response-sample.cpp.o: examples/CMakeFiles/response-sample.dir/flags.make
examples/CMakeFiles/response-sample.dir/response-sample.cpp.o: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/examples/response-sample.cpp
examples/CMakeFiles/response-sample.dir/response-sample.cpp.o: examples/CMakeFiles/response-sample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/response-sample.dir/response-sample.cpp.o"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/response-sample.dir/response-sample.cpp.o -MF CMakeFiles/response-sample.dir/response-sample.cpp.o.d -o CMakeFiles/response-sample.dir/response-sample.cpp.o -c /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/examples/response-sample.cpp

examples/CMakeFiles/response-sample.dir/response-sample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/response-sample.dir/response-sample.cpp.i"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/examples/response-sample.cpp > CMakeFiles/response-sample.dir/response-sample.cpp.i

examples/CMakeFiles/response-sample.dir/response-sample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/response-sample.dir/response-sample.cpp.s"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/examples/response-sample.cpp -o CMakeFiles/response-sample.dir/response-sample.cpp.s

# Object files for target response-sample
response__sample_OBJECTS = \
"CMakeFiles/response-sample.dir/response-sample.cpp.o"

# External object files for target response-sample
response__sample_EXTERNAL_OBJECTS =

examples/response-sample: examples/CMakeFiles/response-sample.dir/response-sample.cpp.o
examples/response-sample: examples/CMakeFiles/response-sample.dir/build.make
examples/response-sample: libvsomeip3.so.3.4.10
examples/response-sample: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
examples/response-sample: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
examples/response-sample: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
examples/response-sample: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
examples/response-sample: examples/CMakeFiles/response-sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable response-sample"
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/response-sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/response-sample.dir/build: examples/response-sample
.PHONY : examples/CMakeFiles/response-sample.dir/build

examples/CMakeFiles/response-sample.dir/clean:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/response-sample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/response-sample.dir/clean

examples/CMakeFiles/response-sample.dir/depend:
	cd /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/examples /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples/CMakeFiles/response-sample.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/response-sample.dir/depend

