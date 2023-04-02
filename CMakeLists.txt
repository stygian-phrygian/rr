# project meta data
cmake_minimum_required(VERSION 3.15)
project(main)

# add the cmake directory to the cmake module path
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

# dependencies
# sudo apt install libncurses-dev
find_package(Curses REQUIRED)

# add imported target libraries
# sudo apt install libncurses-dev
find_package(LIBCURSES REQUIRED)
# sudo apt install libportmidi-dev
find_package(LIBPORTMIDI REQUIRED)
# sudo apt install portaudio19-dev
find_package(LIBPORTAUDIO REQUIRED)

add_subdirectory(apps)

