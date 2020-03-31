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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build

# Include any dependencies generated for this target.
include spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/depend.make

# Include the progress variables for this target.
include spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/progress.make

# Include the compile flags for this target's objects.
include spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/flags.make

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/flags.make
spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-headers/example/example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o -c /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-headers/example/example.cpp

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SPIRV-Headers-example.dir/example.cpp.i"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-headers/example/example.cpp > CMakeFiles/SPIRV-Headers-example.dir/example.cpp.i

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SPIRV-Headers-example.dir/example.cpp.s"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-headers/example/example.cpp -o CMakeFiles/SPIRV-Headers-example.dir/example.cpp.s

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.requires:

.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.requires

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.provides: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.requires
	$(MAKE) -f spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/build.make spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.provides.build
.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.provides

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.provides.build: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o


# Object files for target SPIRV-Headers-example
SPIRV__Headers__example_OBJECTS = \
"CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o"

# External object files for target SPIRV-Headers-example
SPIRV__Headers__example_EXTERNAL_OBJECTS =

spirv-headers/example/libSPIRV-Headers-example.a: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o
spirv-headers/example/libSPIRV-Headers-example.a: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/build.make
spirv-headers/example/libSPIRV-Headers-example.a: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libSPIRV-Headers-example.a"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && $(CMAKE_COMMAND) -P CMakeFiles/SPIRV-Headers-example.dir/cmake_clean_target.cmake
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SPIRV-Headers-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/build: spirv-headers/example/libSPIRV-Headers-example.a

.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/build

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/requires: spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/example.cpp.o.requires

.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/requires

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/clean:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example && $(CMAKE_COMMAND) -P CMakeFiles/SPIRV-Headers-example.dir/cmake_clean.cmake
.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/clean

spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/depend:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/spirv-headers/example /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example /home/caleb/Projects/openmm/platforms/emu/emu_openmm/x86_64-unknown-linux-gnu/release/build/shaderc-sys-5e4ba0dc4915a931/out/build/spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : spirv-headers/example/CMakeFiles/SPIRV-Headers-example.dir/depend

