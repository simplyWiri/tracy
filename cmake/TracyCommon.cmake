cmake_minimum_required(VERSION 3.10)

add_library(TracyCommon STATIC)
add_library(Tracy::TracyCommon ALIAS TracyCommon)

target_sources(TracyCommon
        PRIVATE
        ${TRACY_DIR}/public/common/TracyAlign.hpp
        ${TRACY_DIR}/public/common/TracyAlloc.hpp
        ${TRACY_DIR}/public/common/TracyApi.h
        ${TRACY_DIR}/public/common/TracyColor.hpp
        ${TRACY_DIR}/public/common/TracyForceInline.hpp
        ${TRACY_DIR}/public/common/tracy_lz4.cpp
        ${TRACY_DIR}/public/common/tracy_lz4hc.cpp
        ${TRACY_DIR}/public/common/tracy_lz4hc.hpp
        ${TRACY_DIR}/public/common/tracy_lz4.hpp
        ${TRACY_DIR}/public/common/TracyMutex.hpp
        ${TRACY_DIR}/public/common/TracyProtocol.hpp
        ${TRACY_DIR}/public/common/TracyQueue.hpp
        ${TRACY_DIR}/public/common/TracySocket.cpp
        ${TRACY_DIR}/public/common/TracySocket.hpp
        ${TRACY_DIR}/public/common/TracyStackFrames.cpp
        ${TRACY_DIR}/public/common/TracyStackFrames.hpp
        ${TRACY_DIR}/public/common/TracySystem.cpp
        ${TRACY_DIR}/public/common/TracySystem.hpp
        ${TRACY_DIR}/public/common/TracyUwp.hpp
        ${TRACY_DIR}/public/common/TracyVersion.hpp
        ${TRACY_DIR}/public/common/TracyYield.hpp
)

target_include_directories(TracyCommon
        PUBLIC
        ${TRACY_DIR}/public/common/
)

target_link_libraries(TracyCommon
        PUBLIC PkgConfig::tbb
)

set_target_properties(TracyCommon
        PROPERTIES
        CXX_STANDARD          17
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS        OFF
)