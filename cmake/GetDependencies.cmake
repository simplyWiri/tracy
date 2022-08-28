message("Attempting to find tracy's third party dependencies")
find_package(PkgConfig REQUIRED)

function(tracy_find_external_dependency alias pkg_name dev_files_name)
    pkg_search_module(${alias} REQUIRED IMPORTED_TARGET ${pkg_name})

    if(NOT ${alias}_FOUND)
        message(FATAL_ERROR "Unable to find ${alias}. Please install pkg-config and ${alias} development files, i.e
sudo apt-get install pkg-config ${dev_files_name} (Ubuntu)")
    else()
        message("Found ${alias} library:
    - Include Directories: ${${alias}_INCLUDE_DIRS}
    - Libraries: ${${alias}_LIBRARY_DIRS}/${${alias}_LIBRARIES}")
    endif()
endfunction()

tracy_find_external_dependency(capstone capstone libcapstone-dev)
tracy_find_external_dependency(glfw3 glfw3 libcapstone-dev)
tracy_find_external_dependency(freetype freetype2 libfreetype-dev)
tracy_find_external_dependency(dbus dbus-1 dbus)
tracy_find_external_dependency(tbb tbb libtbb-dev)
tracy_find_external_dependency(zlib zlib zlib1g-dev)
tracy_find_external_dependency(gtk3 gtk+-3.0 libgtk-3-dev)