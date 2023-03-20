# project meta data
cmake_minimum_required(VERSION 3.15)
project(main)

# dependencies
# sudo apt install libncurses-dev
find_package(Curses REQUIRED)

# executables
add_executable(${PROJECT_NAME} app/main.cpp)
target_link_libraries(${PROJECT_NAME} curses)
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)

