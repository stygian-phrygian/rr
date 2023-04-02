# find headers
find_path(
    LIBPORTMIDI_INCLUDE_DIRS
    REQUIRED
    NAMES
        portmidi.h
    PATHS
       /usr/include/)

# find libraries
find_library(
    LIBPORTMIDI_LIBRARIES
    REQUIRED
    NAMES
        libportmidi.so
    PATHS
        /usr/lib/x86_64-linux-gnu/)

# include convenience function
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    LIBPORTMIDI DEFAULT_MSG
    LIBPORTMIDI_INCLUDE_DIRS
    LIBPORTMIDI_LIBRARIES)

# declare variables advanced (for GUI)
mark_as_advanced(LIBPORTMIDI_LIBRARIES LIBPORTMIDI_INCLUDE_DIRS)

# if we haven't already, add imported target library
if(LIBPORTMIDI_FOUND AND NOT TARGET LibPortMidi::LibPortMidi)
    add_library(LibPortMidi::LibPortMidi SHARED IMPORTED)
    set_target_properties(
        LibPortMidi::LibPortMidi
        PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${LIBPORTMIDI_INCLUDE_DIRS}"
        IMPORTED_LOCATION "${LIBPORTMIDI_LIBRARIES}")
endif()

