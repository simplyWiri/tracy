add_executable(TracyProfiler)
add_executable(Tracy::TracyProfiler ALIAS TracyProfiler)

target_sources(TracyProfiler
        PRIVATE
        ${TRACY_DIR}/profiler/src/BackendGlfw.cpp
        ${TRACY_DIR}/profiler/src/Backend.hpp
        ${TRACY_DIR}/profiler/src/ConnectionHistory.cpp
        ${TRACY_DIR}/profiler/src/ConnectionHistory.hpp
        ${TRACY_DIR}/profiler/src/Filters.cpp
        ${TRACY_DIR}/profiler/src/Filters.hpp
        ${TRACY_DIR}/profiler/src/font/DroidSans.hpp
        ${TRACY_DIR}/profiler/src/font/FiraCodeRetina.hpp
        ${TRACY_DIR}/profiler/src/font/FontAwesomeSolid.hpp
        ${TRACY_DIR}/profiler/src/Fonts.cpp
        ${TRACY_DIR}/profiler/src/Fonts.hpp
        ${TRACY_DIR}/profiler/src/HttpRequest.cpp
        ${TRACY_DIR}/profiler/src/HttpRequest.hpp
        ${TRACY_DIR}/profiler/src/icon.hpp
        ${TRACY_DIR}/profiler/src/ini.c
        ${TRACY_DIR}/profiler/src/ini.h
        ${TRACY_DIR}/profiler/src/ImGuiContext.cpp
        ${TRACY_DIR}/profiler/src/ImGuiContext.hpp
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_glfw.cpp
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_glfw.h
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3.cpp
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3.h
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3_loader.h
        ${TRACY_DIR}/profiler/src/IsElevated.cpp
        ${TRACY_DIR}/profiler/src/IsElevated.hpp
        ${TRACY_DIR}/profiler/src/main.cpp
        ${TRACY_DIR}/profiler/src/ResolvService.cpp
        ${TRACY_DIR}/profiler/src/ResolvService.hpp
        ${TRACY_DIR}/profiler/src/RunQueue.cpp
        ${TRACY_DIR}/profiler/src/RunQueue.hpp
        ${TRACY_DIR}/profiler/src/stb_image.h
        ${TRACY_DIR}/profiler/src/stb_image_resize.h
        ${TRACY_DIR}/profiler/src/WindowPosition.cpp
        ${TRACY_DIR}/profiler/src/WindowPosition.hpp
        ${TRACY_DIR}/profiler/src/winmainArchDiscovery.cpp
        ${TRACY_DIR}/profiler/src/winmain.cpp
)

target_link_libraries(TracyProfiler
    PRIVATE
        TracyCommon
        TracyImGui
        TracyNFD
        TracyServer
        PkgConfig::glfw3
)

set_target_properties(TracyProfiler
        PROPERTIES
        CXX_STANDARD          17
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS        OFF
        OUTPUT_NAME           "Tracy"
)
