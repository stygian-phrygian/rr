
# find headers
find_path(
    LIBPORTAUDIO_INCLUDE_DIRS
    REQUIRED
    NAMES
        portaudio.h
    PATHS
       /usr/include/)

# find libraries
find_library(
    LIBPORTAUDIO_LIBRARIES
    REQUIRED
    NAMES
        libportaudio.so
    PATHS
        /usr/lib/x86_64-linux-gnu/)

# include convenience function
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    LIBPORTAUDIO DEFAULT_MSG
    LIBPORTAUDIO_INCLUDE_DIRS
    LIBPORTAUDIO_LIBRARIES)

# declare variables advanced (for GUI)
mark_as_advanced(LIBPORTAUDIO_LIBRARIES LIBPORTAUDIO_INCLUDE_DIRS)

# if we haven't already, add imported target library
if(LIBPORTAUDIO_FOUND AND NOT TARGET LibPortAudio::LibPortAudio)
    add_library(LibPortAudio::LibPortAudio SHARED IMPORTED)
    set_target_properties(
        LibPortAudio::LibPortAudio
        PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${LIBPORTAUDIO_INCLUDE_DIRS}"
        IMPORTED_LOCATION "${LIBPORTAUDIO_LIBRARIES}")
endif()

