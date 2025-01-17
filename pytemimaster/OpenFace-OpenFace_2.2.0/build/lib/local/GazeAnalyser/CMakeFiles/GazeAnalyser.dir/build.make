# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build

# Include any dependencies generated for this target.
include lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/depend.make

# Include the progress variables for this target.
include lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/progress.make

# Include the compile flags for this target's objects.
include lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/flags.make

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/flags.make
lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o: ../lib/local/GazeAnalyser/src/GazeEstimation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o"
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && /usr/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o -c /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/GazeAnalyser/src/GazeEstimation.cpp

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.i"
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && /usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/GazeAnalyser/src/GazeEstimation.cpp > CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.i

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.s"
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && /usr/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/GazeAnalyser/src/GazeEstimation.cpp -o CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.s

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.requires:

.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.requires

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.provides: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.requires
	$(MAKE) -f lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/build.make lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.provides.build
.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.provides

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.provides.build: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o


# Object files for target GazeAnalyser
GazeAnalyser_OBJECTS = \
"CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o"

# External object files for target GazeAnalyser
GazeAnalyser_EXTERNAL_OBJECTS =

lib/local/GazeAnalyser/libGazeAnalyser.a: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o
lib/local/GazeAnalyser/libGazeAnalyser.a: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/build.make
lib/local/GazeAnalyser/libGazeAnalyser.a: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libGazeAnalyser.a"
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && $(CMAKE_COMMAND) -P CMakeFiles/GazeAnalyser.dir/cmake_clean_target.cmake
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GazeAnalyser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/build: lib/local/GazeAnalyser/libGazeAnalyser.a

.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/build

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/requires: lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/src/GazeEstimation.cpp.o.requires

.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/requires

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/clean:
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser && $(CMAKE_COMMAND) -P CMakeFiles/GazeAnalyser.dir/cmake_clean.cmake
.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/clean

lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/depend:
	cd /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0 /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/GazeAnalyser /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/local/GazeAnalyser/CMakeFiles/GazeAnalyser.dir/depend

