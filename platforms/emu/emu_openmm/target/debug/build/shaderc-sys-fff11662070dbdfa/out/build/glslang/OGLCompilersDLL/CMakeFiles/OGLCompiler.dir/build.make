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
include glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/depend.make

# Include the progress variables for this target.
include glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/progress.make

# Include the compile flags for this target's objects.
include glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/flags.make

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/flags.make
glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o: /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/OGLCompilersDLL/InitializeDll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o -c /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/OGLCompilersDLL/InitializeDll.cpp

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.i"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/OGLCompilersDLL/InitializeDll.cpp > CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.i

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.s"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/OGLCompilersDLL/InitializeDll.cpp -o CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.s

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.requires:

.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.requires

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.provides: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.requires
	$(MAKE) -f glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/build.make glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.provides.build
.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.provides

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.provides.build: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o


# Object files for target OGLCompiler
OGLCompiler_OBJECTS = \
"CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o"

# External object files for target OGLCompiler
OGLCompiler_EXTERNAL_OBJECTS =

glslang/OGLCompilersDLL/libOGLCompiler.a: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o
glslang/OGLCompilersDLL/libOGLCompiler.a: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/build.make
glslang/OGLCompilersDLL/libOGLCompiler.a: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libOGLCompiler.a"
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && $(CMAKE_COMMAND) -P CMakeFiles/OGLCompiler.dir/cmake_clean_target.cmake
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OGLCompiler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/build: glslang/OGLCompilersDLL/libOGLCompiler.a

.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/build

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/requires: glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/InitializeDll.cpp.o.requires

.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/requires

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/clean:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL && $(CMAKE_COMMAND) -P CMakeFiles/OGLCompiler.dir/cmake_clean.cmake
.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/clean

glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/depend:
	cd /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build /home/caleb/.cargo/registry/src/github.com-1ecc6299db9ec823/shaderc-sys-0.6.2/build/glslang/OGLCompilersDLL /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL /home/caleb/Projects/openmm/platforms/emu/emu_openmm/target/debug/build/shaderc-sys-fff11662070dbdfa/out/build/glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glslang/OGLCompilersDLL/CMakeFiles/OGLCompiler.dir/depend

