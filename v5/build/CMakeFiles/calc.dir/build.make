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
CMAKE_SOURCE_DIR = /home/zyj/cmakeLearn/v5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyj/cmakeLearn/v5/build

# Include any dependencies generated for this target.
include CMakeFiles/calc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/calc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calc.dir/flags.make

CMakeFiles/calc.dir/src/add.c.o: CMakeFiles/calc.dir/flags.make
CMakeFiles/calc.dir/src/add.c.o: ../src/add.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/calc.dir/src/add.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/calc.dir/src/add.c.o   -c /home/zyj/cmakeLearn/v5/src/add.c

CMakeFiles/calc.dir/src/add.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calc.dir/src/add.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyj/cmakeLearn/v5/src/add.c > CMakeFiles/calc.dir/src/add.c.i

CMakeFiles/calc.dir/src/add.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calc.dir/src/add.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyj/cmakeLearn/v5/src/add.c -o CMakeFiles/calc.dir/src/add.c.s

CMakeFiles/calc.dir/src/div.c.o: CMakeFiles/calc.dir/flags.make
CMakeFiles/calc.dir/src/div.c.o: ../src/div.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/calc.dir/src/div.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/calc.dir/src/div.c.o   -c /home/zyj/cmakeLearn/v5/src/div.c

CMakeFiles/calc.dir/src/div.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calc.dir/src/div.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyj/cmakeLearn/v5/src/div.c > CMakeFiles/calc.dir/src/div.c.i

CMakeFiles/calc.dir/src/div.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calc.dir/src/div.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyj/cmakeLearn/v5/src/div.c -o CMakeFiles/calc.dir/src/div.c.s

CMakeFiles/calc.dir/src/main.c.o: CMakeFiles/calc.dir/flags.make
CMakeFiles/calc.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/calc.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/calc.dir/src/main.c.o   -c /home/zyj/cmakeLearn/v5/src/main.c

CMakeFiles/calc.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calc.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyj/cmakeLearn/v5/src/main.c > CMakeFiles/calc.dir/src/main.c.i

CMakeFiles/calc.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calc.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyj/cmakeLearn/v5/src/main.c -o CMakeFiles/calc.dir/src/main.c.s

CMakeFiles/calc.dir/src/mult.c.o: CMakeFiles/calc.dir/flags.make
CMakeFiles/calc.dir/src/mult.c.o: ../src/mult.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/calc.dir/src/mult.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/calc.dir/src/mult.c.o   -c /home/zyj/cmakeLearn/v5/src/mult.c

CMakeFiles/calc.dir/src/mult.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calc.dir/src/mult.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyj/cmakeLearn/v5/src/mult.c > CMakeFiles/calc.dir/src/mult.c.i

CMakeFiles/calc.dir/src/mult.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calc.dir/src/mult.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyj/cmakeLearn/v5/src/mult.c -o CMakeFiles/calc.dir/src/mult.c.s

CMakeFiles/calc.dir/src/sub.c.o: CMakeFiles/calc.dir/flags.make
CMakeFiles/calc.dir/src/sub.c.o: ../src/sub.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/calc.dir/src/sub.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/calc.dir/src/sub.c.o   -c /home/zyj/cmakeLearn/v5/src/sub.c

CMakeFiles/calc.dir/src/sub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/calc.dir/src/sub.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zyj/cmakeLearn/v5/src/sub.c > CMakeFiles/calc.dir/src/sub.c.i

CMakeFiles/calc.dir/src/sub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/calc.dir/src/sub.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zyj/cmakeLearn/v5/src/sub.c -o CMakeFiles/calc.dir/src/sub.c.s

# Object files for target calc
calc_OBJECTS = \
"CMakeFiles/calc.dir/src/add.c.o" \
"CMakeFiles/calc.dir/src/div.c.o" \
"CMakeFiles/calc.dir/src/main.c.o" \
"CMakeFiles/calc.dir/src/mult.c.o" \
"CMakeFiles/calc.dir/src/sub.c.o"

# External object files for target calc
calc_EXTERNAL_OBJECTS =

../lib/libcalc.so: CMakeFiles/calc.dir/src/add.c.o
../lib/libcalc.so: CMakeFiles/calc.dir/src/div.c.o
../lib/libcalc.so: CMakeFiles/calc.dir/src/main.c.o
../lib/libcalc.so: CMakeFiles/calc.dir/src/mult.c.o
../lib/libcalc.so: CMakeFiles/calc.dir/src/sub.c.o
../lib/libcalc.so: CMakeFiles/calc.dir/build.make
../lib/libcalc.so: CMakeFiles/calc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zyj/cmakeLearn/v5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C shared library ../lib/libcalc.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calc.dir/build: ../lib/libcalc.so

.PHONY : CMakeFiles/calc.dir/build

CMakeFiles/calc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calc.dir/clean

CMakeFiles/calc.dir/depend:
	cd /home/zyj/cmakeLearn/v5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyj/cmakeLearn/v5 /home/zyj/cmakeLearn/v5 /home/zyj/cmakeLearn/v5/build /home/zyj/cmakeLearn/v5/build /home/zyj/cmakeLearn/v5/build/CMakeFiles/calc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calc.dir/depend

