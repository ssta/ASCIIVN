# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /nix/store/wvnj828fpihafpmwafsmsxkrzgdr3k9r-cmake-3.8.2/bin/cmake

# The command to remove a file.
RM = /nix/store/wvnj828fpihafpmwafsmsxkrzgdr3k9r-cmake-3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/myrl/Development/ASCIIVN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/myrl/Development/ASCIIVN

# Include any dependencies generated for this target.
include CMakeFiles/asciivn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/asciivn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/asciivn.dir/flags.make

CMakeFiles/asciivn.dir/main.c.o: CMakeFiles/asciivn.dir/flags.make
CMakeFiles/asciivn.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/asciivn.dir/main.c.o"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/asciivn.dir/main.c.o   -c /home/myrl/Development/ASCIIVN/main.c

CMakeFiles/asciivn.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/asciivn.dir/main.c.i"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myrl/Development/ASCIIVN/main.c > CMakeFiles/asciivn.dir/main.c.i

CMakeFiles/asciivn.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/asciivn.dir/main.c.s"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myrl/Development/ASCIIVN/main.c -o CMakeFiles/asciivn.dir/main.c.s

CMakeFiles/asciivn.dir/main.c.o.requires:

.PHONY : CMakeFiles/asciivn.dir/main.c.o.requires

CMakeFiles/asciivn.dir/main.c.o.provides: CMakeFiles/asciivn.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/asciivn.dir/build.make CMakeFiles/asciivn.dir/main.c.o.provides.build
.PHONY : CMakeFiles/asciivn.dir/main.c.o.provides

CMakeFiles/asciivn.dir/main.c.o.provides.build: CMakeFiles/asciivn.dir/main.c.o


CMakeFiles/asciivn.dir/asciibuffer.c.o: CMakeFiles/asciivn.dir/flags.make
CMakeFiles/asciivn.dir/asciibuffer.c.o: asciibuffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/asciivn.dir/asciibuffer.c.o"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/asciivn.dir/asciibuffer.c.o   -c /home/myrl/Development/ASCIIVN/asciibuffer.c

CMakeFiles/asciivn.dir/asciibuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/asciivn.dir/asciibuffer.c.i"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myrl/Development/ASCIIVN/asciibuffer.c > CMakeFiles/asciivn.dir/asciibuffer.c.i

CMakeFiles/asciivn.dir/asciibuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/asciivn.dir/asciibuffer.c.s"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myrl/Development/ASCIIVN/asciibuffer.c -o CMakeFiles/asciivn.dir/asciibuffer.c.s

CMakeFiles/asciivn.dir/asciibuffer.c.o.requires:

.PHONY : CMakeFiles/asciivn.dir/asciibuffer.c.o.requires

CMakeFiles/asciivn.dir/asciibuffer.c.o.provides: CMakeFiles/asciivn.dir/asciibuffer.c.o.requires
	$(MAKE) -f CMakeFiles/asciivn.dir/build.make CMakeFiles/asciivn.dir/asciibuffer.c.o.provides.build
.PHONY : CMakeFiles/asciivn.dir/asciibuffer.c.o.provides

CMakeFiles/asciivn.dir/asciibuffer.c.o.provides.build: CMakeFiles/asciivn.dir/asciibuffer.c.o


CMakeFiles/asciivn.dir/asciibufferfill.c.o: CMakeFiles/asciivn.dir/flags.make
CMakeFiles/asciivn.dir/asciibufferfill.c.o: asciibufferfill.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/asciivn.dir/asciibufferfill.c.o"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/asciivn.dir/asciibufferfill.c.o   -c /home/myrl/Development/ASCIIVN/asciibufferfill.c

CMakeFiles/asciivn.dir/asciibufferfill.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/asciivn.dir/asciibufferfill.c.i"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myrl/Development/ASCIIVN/asciibufferfill.c > CMakeFiles/asciivn.dir/asciibufferfill.c.i

CMakeFiles/asciivn.dir/asciibufferfill.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/asciivn.dir/asciibufferfill.c.s"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myrl/Development/ASCIIVN/asciibufferfill.c -o CMakeFiles/asciivn.dir/asciibufferfill.c.s

CMakeFiles/asciivn.dir/asciibufferfill.c.o.requires:

.PHONY : CMakeFiles/asciivn.dir/asciibufferfill.c.o.requires

CMakeFiles/asciivn.dir/asciibufferfill.c.o.provides: CMakeFiles/asciivn.dir/asciibufferfill.c.o.requires
	$(MAKE) -f CMakeFiles/asciivn.dir/build.make CMakeFiles/asciivn.dir/asciibufferfill.c.o.provides.build
.PHONY : CMakeFiles/asciivn.dir/asciibufferfill.c.o.provides

CMakeFiles/asciivn.dir/asciibufferfill.c.o.provides.build: CMakeFiles/asciivn.dir/asciibufferfill.c.o


CMakeFiles/asciivn.dir/asciibufferssim.c.o: CMakeFiles/asciivn.dir/flags.make
CMakeFiles/asciivn.dir/asciibufferssim.c.o: asciibufferssim.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/asciivn.dir/asciibufferssim.c.o"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/asciivn.dir/asciibufferssim.c.o   -c /home/myrl/Development/ASCIIVN/asciibufferssim.c

CMakeFiles/asciivn.dir/asciibufferssim.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/asciivn.dir/asciibufferssim.c.i"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myrl/Development/ASCIIVN/asciibufferssim.c > CMakeFiles/asciivn.dir/asciibufferssim.c.i

CMakeFiles/asciivn.dir/asciibufferssim.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/asciivn.dir/asciibufferssim.c.s"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myrl/Development/ASCIIVN/asciibufferssim.c -o CMakeFiles/asciivn.dir/asciibufferssim.c.s

CMakeFiles/asciivn.dir/asciibufferssim.c.o.requires:

.PHONY : CMakeFiles/asciivn.dir/asciibufferssim.c.o.requires

CMakeFiles/asciivn.dir/asciibufferssim.c.o.provides: CMakeFiles/asciivn.dir/asciibufferssim.c.o.requires
	$(MAKE) -f CMakeFiles/asciivn.dir/build.make CMakeFiles/asciivn.dir/asciibufferssim.c.o.provides.build
.PHONY : CMakeFiles/asciivn.dir/asciibufferssim.c.o.provides

CMakeFiles/asciivn.dir/asciibufferssim.c.o.provides.build: CMakeFiles/asciivn.dir/asciibufferssim.c.o


CMakeFiles/asciivn.dir/testimage.c.o: CMakeFiles/asciivn.dir/flags.make
CMakeFiles/asciivn.dir/testimage.c.o: testimage.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/asciivn.dir/testimage.c.o"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/asciivn.dir/testimage.c.o   -c /home/myrl/Development/ASCIIVN/testimage.c

CMakeFiles/asciivn.dir/testimage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/asciivn.dir/testimage.c.i"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myrl/Development/ASCIIVN/testimage.c > CMakeFiles/asciivn.dir/testimage.c.i

CMakeFiles/asciivn.dir/testimage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/asciivn.dir/testimage.c.s"
	/nix/store/1737rmrjh317jf90ifc7m6ddpx06qpm7-gcc-wrapper-6.4.0/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myrl/Development/ASCIIVN/testimage.c -o CMakeFiles/asciivn.dir/testimage.c.s

CMakeFiles/asciivn.dir/testimage.c.o.requires:

.PHONY : CMakeFiles/asciivn.dir/testimage.c.o.requires

CMakeFiles/asciivn.dir/testimage.c.o.provides: CMakeFiles/asciivn.dir/testimage.c.o.requires
	$(MAKE) -f CMakeFiles/asciivn.dir/build.make CMakeFiles/asciivn.dir/testimage.c.o.provides.build
.PHONY : CMakeFiles/asciivn.dir/testimage.c.o.provides

CMakeFiles/asciivn.dir/testimage.c.o.provides.build: CMakeFiles/asciivn.dir/testimage.c.o


# Object files for target asciivn
asciivn_OBJECTS = \
"CMakeFiles/asciivn.dir/main.c.o" \
"CMakeFiles/asciivn.dir/asciibuffer.c.o" \
"CMakeFiles/asciivn.dir/asciibufferfill.c.o" \
"CMakeFiles/asciivn.dir/asciibufferssim.c.o" \
"CMakeFiles/asciivn.dir/testimage.c.o"

# External object files for target asciivn
asciivn_EXTERNAL_OBJECTS =

asciivn: CMakeFiles/asciivn.dir/main.c.o
asciivn: CMakeFiles/asciivn.dir/asciibuffer.c.o
asciivn: CMakeFiles/asciivn.dir/asciibufferfill.c.o
asciivn: CMakeFiles/asciivn.dir/asciibufferssim.c.o
asciivn: CMakeFiles/asciivn.dir/testimage.c.o
asciivn: CMakeFiles/asciivn.dir/build.make
asciivn: CMakeFiles/asciivn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/myrl/Development/ASCIIVN/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable asciivn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asciivn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/asciivn.dir/build: asciivn

.PHONY : CMakeFiles/asciivn.dir/build

CMakeFiles/asciivn.dir/requires: CMakeFiles/asciivn.dir/main.c.o.requires
CMakeFiles/asciivn.dir/requires: CMakeFiles/asciivn.dir/asciibuffer.c.o.requires
CMakeFiles/asciivn.dir/requires: CMakeFiles/asciivn.dir/asciibufferfill.c.o.requires
CMakeFiles/asciivn.dir/requires: CMakeFiles/asciivn.dir/asciibufferssim.c.o.requires
CMakeFiles/asciivn.dir/requires: CMakeFiles/asciivn.dir/testimage.c.o.requires

.PHONY : CMakeFiles/asciivn.dir/requires

CMakeFiles/asciivn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/asciivn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/asciivn.dir/clean

CMakeFiles/asciivn.dir/depend:
	cd /home/myrl/Development/ASCIIVN && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/myrl/Development/ASCIIVN /home/myrl/Development/ASCIIVN /home/myrl/Development/ASCIIVN /home/myrl/Development/ASCIIVN /home/myrl/Development/ASCIIVN/CMakeFiles/asciivn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/asciivn.dir/depend

