# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/luka/Workspace/echo-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/luka/Workspace/echo-server/build

# Include any dependencies generated for this target.
include CMakeFiles/kqueuelib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kqueuelib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kqueuelib.dir/flags.make

CMakeFiles/kqueuelib.dir/lib/error.c.o: CMakeFiles/kqueuelib.dir/flags.make
CMakeFiles/kqueuelib.dir/lib/error.c.o: ../lib/error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luka/Workspace/echo-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/kqueuelib.dir/lib/error.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kqueuelib.dir/lib/error.c.o   -c /Users/luka/Workspace/echo-server/lib/error.c

CMakeFiles/kqueuelib.dir/lib/error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kqueuelib.dir/lib/error.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luka/Workspace/echo-server/lib/error.c > CMakeFiles/kqueuelib.dir/lib/error.c.i

CMakeFiles/kqueuelib.dir/lib/error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kqueuelib.dir/lib/error.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luka/Workspace/echo-server/lib/error.c -o CMakeFiles/kqueuelib.dir/lib/error.c.s

CMakeFiles/kqueuelib.dir/lib/event_handler.c.o: CMakeFiles/kqueuelib.dir/flags.make
CMakeFiles/kqueuelib.dir/lib/event_handler.c.o: ../lib/event_handler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luka/Workspace/echo-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/kqueuelib.dir/lib/event_handler.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kqueuelib.dir/lib/event_handler.c.o   -c /Users/luka/Workspace/echo-server/lib/event_handler.c

CMakeFiles/kqueuelib.dir/lib/event_handler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kqueuelib.dir/lib/event_handler.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luka/Workspace/echo-server/lib/event_handler.c > CMakeFiles/kqueuelib.dir/lib/event_handler.c.i

CMakeFiles/kqueuelib.dir/lib/event_handler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kqueuelib.dir/lib/event_handler.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luka/Workspace/echo-server/lib/event_handler.c -o CMakeFiles/kqueuelib.dir/lib/event_handler.c.s

CMakeFiles/kqueuelib.dir/lib/sock.c.o: CMakeFiles/kqueuelib.dir/flags.make
CMakeFiles/kqueuelib.dir/lib/sock.c.o: ../lib/sock.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luka/Workspace/echo-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/kqueuelib.dir/lib/sock.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kqueuelib.dir/lib/sock.c.o   -c /Users/luka/Workspace/echo-server/lib/sock.c

CMakeFiles/kqueuelib.dir/lib/sock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kqueuelib.dir/lib/sock.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luka/Workspace/echo-server/lib/sock.c > CMakeFiles/kqueuelib.dir/lib/sock.c.i

CMakeFiles/kqueuelib.dir/lib/sock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kqueuelib.dir/lib/sock.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luka/Workspace/echo-server/lib/sock.c -o CMakeFiles/kqueuelib.dir/lib/sock.c.s

# Object files for target kqueuelib
kqueuelib_OBJECTS = \
"CMakeFiles/kqueuelib.dir/lib/error.c.o" \
"CMakeFiles/kqueuelib.dir/lib/event_handler.c.o" \
"CMakeFiles/kqueuelib.dir/lib/sock.c.o"

# External object files for target kqueuelib
kqueuelib_EXTERNAL_OBJECTS =

libkqueuelib.a: CMakeFiles/kqueuelib.dir/lib/error.c.o
libkqueuelib.a: CMakeFiles/kqueuelib.dir/lib/event_handler.c.o
libkqueuelib.a: CMakeFiles/kqueuelib.dir/lib/sock.c.o
libkqueuelib.a: CMakeFiles/kqueuelib.dir/build.make
libkqueuelib.a: CMakeFiles/kqueuelib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/luka/Workspace/echo-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libkqueuelib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/kqueuelib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kqueuelib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kqueuelib.dir/build: libkqueuelib.a

.PHONY : CMakeFiles/kqueuelib.dir/build

CMakeFiles/kqueuelib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kqueuelib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kqueuelib.dir/clean

CMakeFiles/kqueuelib.dir/depend:
	cd /Users/luka/Workspace/echo-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luka/Workspace/echo-server /Users/luka/Workspace/echo-server /Users/luka/Workspace/echo-server/build /Users/luka/Workspace/echo-server/build /Users/luka/Workspace/echo-server/build/CMakeFiles/kqueuelib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kqueuelib.dir/depend
