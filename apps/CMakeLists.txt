add_executable(${PROJECT_NAME} main.cpp)
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wpedantic)
target_link_libraries(${PROJECT_NAME} LibCurses::LibCurses)
target_link_libraries(${PROJECT_NAME} LibPortMidi::LibPortMidi)
target_link_libraries(${PROJECT_NAME} LibPortAudio::LibPortAudio)

