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
CMAKE_SOURCE_DIR = /home/trax/personal-projects/bd1-2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/trax/personal-projects/bd1-2/build

# Utility rule file for bd1_simple_moves_gencpp.

# Include the progress variables for this target.
include bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/progress.make

bd1_simple_moves_gencpp: bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/build.make

.PHONY : bd1_simple_moves_gencpp

# Rule to build all files generated by this target.
bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/build: bd1_simple_moves_gencpp

.PHONY : bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/build

bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/clean:
	cd /home/trax/personal-projects/bd1-2/build/bd1_simple_moves && $(CMAKE_COMMAND) -P CMakeFiles/bd1_simple_moves_gencpp.dir/cmake_clean.cmake
.PHONY : bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/clean

bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/depend:
	cd /home/trax/personal-projects/bd1-2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/trax/personal-projects/bd1-2/src /home/trax/personal-projects/bd1-2/src/bd1_simple_moves /home/trax/personal-projects/bd1-2/build /home/trax/personal-projects/bd1-2/build/bd1_simple_moves /home/trax/personal-projects/bd1-2/build/bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bd1_simple_moves/CMakeFiles/bd1_simple_moves_gencpp.dir/depend

