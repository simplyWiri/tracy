add_library(TracyNFD STATIC)
add_library(Tracy::TracyNFD ALIAS TracyNFD)

target_sources(TracyNFD
        PRIVATE
        ${TRACY_DIR}/nfd/nfd.h
        ${TRACY_DIR}/nfd/nfd_gtk.cpp
        ${TRACY_DIR}/nfd/nfd_portal.cpp
)
target_include_directories(TracyNFD
        PUBLIC
        ${TRACY_DIR}/nfd
)

target_link_libraries(TracyNFD
        PRIVATE
        $<$<PLATFORM_ID:Linux>: PkgConfig::gtk3>
)