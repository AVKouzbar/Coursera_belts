# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\dev\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\dev\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Prog_02_phone_number.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Prog_02_phone_number.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Prog_02_phone_number.dir/flags.make

CMakeFiles/Prog_02_phone_number.dir/main.cpp.obj: CMakeFiles/Prog_02_phone_number.dir/flags.make
CMakeFiles/Prog_02_phone_number.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Prog_02_phone_number.dir/main.cpp.obj"
	C:\dev\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Prog_02_phone_number.dir\main.cpp.obj -c C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\main.cpp

CMakeFiles/Prog_02_phone_number.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Prog_02_phone_number.dir/main.cpp.i"
	C:\dev\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\main.cpp > CMakeFiles\Prog_02_phone_number.dir\main.cpp.i

CMakeFiles/Prog_02_phone_number.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Prog_02_phone_number.dir/main.cpp.s"
	C:\dev\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\main.cpp -o CMakeFiles\Prog_02_phone_number.dir\main.cpp.s

# Object files for target Prog_02_phone_number
Prog_02_phone_number_OBJECTS = \
"CMakeFiles/Prog_02_phone_number.dir/main.cpp.obj"

# External object files for target Prog_02_phone_number
Prog_02_phone_number_EXTERNAL_OBJECTS =

Prog_02_phone_number.exe: CMakeFiles/Prog_02_phone_number.dir/main.cpp.obj
Prog_02_phone_number.exe: CMakeFiles/Prog_02_phone_number.dir/build.make
Prog_02_phone_number.exe: CMakeFiles/Prog_02_phone_number.dir/linklibs.rsp
Prog_02_phone_number.exe: CMakeFiles/Prog_02_phone_number.dir/objects1.rsp
Prog_02_phone_number.exe: CMakeFiles/Prog_02_phone_number.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Prog_02_phone_number.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Prog_02_phone_number.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Prog_02_phone_number.dir/build: Prog_02_phone_number.exe

.PHONY : CMakeFiles/Prog_02_phone_number.dir/build

CMakeFiles/Prog_02_phone_number.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Prog_02_phone_number.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Prog_02_phone_number.dir/clean

CMakeFiles/Prog_02_phone_number.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug C:\Users\Loathem\CLionProjects\02_Yellow_belt_begin_2020-07-07\Week_3\Prog_02_phone_number\cmake-build-debug\CMakeFiles\Prog_02_phone_number.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Prog_02_phone_number.dir/depend

