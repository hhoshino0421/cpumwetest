# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpumwetest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpumwetest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpumwetest.dir/flags.make

CMakeFiles/cpumwetest.dir/main.cpp.o: CMakeFiles/cpumwetest.dir/flags.make
CMakeFiles/cpumwetest.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpumwetest.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpumwetest.dir/main.cpp.o -c /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/main.cpp

CMakeFiles/cpumwetest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpumwetest.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/main.cpp > CMakeFiles/cpumwetest.dir/main.cpp.i

CMakeFiles/cpumwetest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpumwetest.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/main.cpp -o CMakeFiles/cpumwetest.dir/main.cpp.s

# Object files for target cpumwetest
cpumwetest_OBJECTS = \
"CMakeFiles/cpumwetest.dir/main.cpp.o"

# External object files for target cpumwetest
cpumwetest_EXTERNAL_OBJECTS =

cpumwetest: CMakeFiles/cpumwetest.dir/main.cpp.o
cpumwetest: CMakeFiles/cpumwetest.dir/build.make
cpumwetest: CMakeFiles/cpumwetest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpumwetest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpumwetest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpumwetest.dir/build: cpumwetest

.PHONY : CMakeFiles/cpumwetest.dir/build

CMakeFiles/cpumwetest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpumwetest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpumwetest.dir/clean

CMakeFiles/cpumwetest.dir/depend:
	cd /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug /Users/hoshinohitoshi/develop/Clion_Workspace/cpumwetest/cmake-build-debug/CMakeFiles/cpumwetest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpumwetest.dir/depend

