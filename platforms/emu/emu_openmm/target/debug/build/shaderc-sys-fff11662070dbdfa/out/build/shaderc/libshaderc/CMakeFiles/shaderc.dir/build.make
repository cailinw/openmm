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
CMAKE_BINARY_DIR = /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build

# Include any dependencies generated for this target.
include shaderc/libshaderc/CMakeFiles/shaderc.dir/depend.make

# Include the progress variables for this target.
include shaderc/libshaderc/CMakeFiles/shaderc.dir/progress.make

# Include the compile flags for this target's objects.
include shaderc/libshaderc/CMakeFiles/shaderc.dir/flags.make

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o: shaderc/libshaderc/CMakeFiles/shaderc.dir/flags.make
shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/shaderc/libshaderc/src/shaderc.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shaderc.dir/src/shaderc.cc.o -c /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/shaderc/libshaderc/src/shaderc.cc

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shaderc.dir/src/shaderc.cc.i"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/shaderc/libshaderc/src/shaderc.cc > CMakeFiles/shaderc.dir/src/shaderc.cc.i

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shaderc.dir/src/shaderc.cc.s"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/shaderc/libshaderc/src/shaderc.cc -o CMakeFiles/shaderc.dir/src/shaderc.cc.s

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.requires:

.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.requires

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.provides: shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.requires
	$(MAKE) -f shaderc/libshaderc/CMakeFiles/shaderc.dir/build.make shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.provides.build
.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.provides

shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.provides.build: shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o


# Object files for target shaderc
shaderc_OBJECTS = \
"CMakeFiles/shaderc.dir/src/shaderc.cc.o"

# External object files for target shaderc
shaderc_EXTERNAL_OBJECTS =

shaderc/libshaderc/libshaderc.a: shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o
shaderc/libshaderc/libshaderc.a: shaderc/libshaderc/CMakeFiles/shaderc.dir/build.make
shaderc/libshaderc/libshaderc.a: shaderc/libshaderc/CMakeFiles/shaderc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libshaderc.a"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && $(CMAKE_COMMAND) -P CMakeFiles/shaderc.dir/cmake_clean_target.cmake
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shaderc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shaderc/libshaderc/CMakeFiles/shaderc.dir/build: shaderc/libshaderc/libshaderc.a

.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/build

shaderc/libshaderc/CMakeFiles/shaderc.dir/requires: shaderc/libshaderc/CMakeFiles/shaderc.dir/src/shaderc.cc.o.requires

.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/requires

shaderc/libshaderc/CMakeFiles/shaderc.dir/clean:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc && $(CMAKE_COMMAND) -P CMakeFiles/shaderc.dir/cmake_clean.cmake
.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/clean

shaderc/libshaderc/CMakeFiles/shaderc.dir/depend:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/shaderc/libshaderc /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/shaderc/libshaderc/CMakeFiles/shaderc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shaderc/libshaderc/CMakeFiles/shaderc.dir/depend

