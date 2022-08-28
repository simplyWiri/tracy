# Make tracy aware of third party dependencies
include(GetDependencies.cmake)

set(TRACY_DIR ${PROJECT_SOURCE_DIR})

# Mostly automated by `find . -name *.cpp -o -name *.hpp -o -name *.h -o -name *.c -o -name *.cc | sort | sed "s/\.\(.*\)/\${TRACY_DIR}\1/"`
# could probably write a script to actually generate these files, not quite bothered just yet. (care would need to
# be taken for files which are platform specific)

include(TracyCommon.cmake)
include(TracyZstd.cmake)
include(TracyImgui.cmake)
include(TracyNFD.cmake)
include(TracyServer.cmake)
include(TracyProfiler.cmake)