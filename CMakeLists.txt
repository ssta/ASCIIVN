#Specify the version being used aswell as the language
cmake_minimum_required(VERSION 2.6)
#Name your project here
project(ASCIIVN)

set(HEADERS
  asciibuffer.h
  asciibufferfill.h
  asciibufferssim.h
  xbmutils.h
  charset.h
  imagebuffer.h
  imagemanip.h
  imagemanip_kernel.h
  keyevent.h
  terminal.h
  slides.h
  testimage.h)
set(SOURCES
  main.c
  asciibuffer.c
  asciibufferfill.c
  asciibufferssim.c
  xbmutils.c
  charset.c
  imagebuffer.c
  imagemanip.c
  imagemanip_kernel.c
  keyevent.c
  terminal.c
  slides.c
  testimage.c)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g3 -lpng -lm -std=c11 -Wall -Werror=incompatible-pointer-types")
# add_definitions(-lm -std=c11 -g -Wall -Werror=incompatible-pointer-types)
# This tells CMake to main.c and name it asciivn
add_executable(asciivn main.c ${SOURCES})
