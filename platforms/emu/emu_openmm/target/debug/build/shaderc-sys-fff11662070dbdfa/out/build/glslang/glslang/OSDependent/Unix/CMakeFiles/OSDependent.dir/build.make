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
include glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend.make

# Include the progress variables for this target.
include glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/progress.make

# Include the compile flags for this target's objects.
include glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/flags.make

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/flags.make
glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/glslang/OSDependent/Unix/ossource.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OSDependent.dir/ossource.cpp.o -c /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/glslang/OSDependent/Unix/ossource.cpp

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OSDependent.dir/ossource.cpp.i"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/glslang/OSDependent/Unix/ossource.cpp > CMakeFiles/OSDependent.dir/ossource.cpp.i

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OSDependent.dir/ossource.cpp.s"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/glslang/OSDependent/Unix/ossource.cpp -o CMakeFiles/OSDependent.dir/ossource.cpp.s

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.requires:

.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.requires

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.provides: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.requires
	$(MAKE) -f glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build.make glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.provides.build
.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.provides

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.provides.build: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o


# Object files for target OSDependent
OSDependent_OBJECTS = \
"CMakeFiles/OSDependent.dir/ossource.cpp.o"

# External object files for target OSDependent
OSDependent_EXTERNAL_OBJECTS =

glslang/glslang/OSDependent/Unix/libOSDependent.a: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o
glslang/glslang/OSDependent/Unix/libOSDependent.a: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build.make
glslang/glslang/OSDependent/Unix/libOSDependent.a: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libOSDependent.a"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -P CMakeFiles/OSDependent.dir/cmake_clean_target.cmake
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OSDependent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build: glslang/glslang/OSDependent/Unix/libOSDependent.a

.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/requires: glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o.requires

.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/requires

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/clean:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -P CMakeFiles/OSDependent.dir/cmake_clean.cmake
.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/clean

glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/glslang/OSDependent/Unix /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend

