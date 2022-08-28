add_library(TracyImGui STATIC)
add_library(Tracy::TracyImGui ALIAS TracyImGui)

target_sources(TracyImGui
        PRIVATE
        ${TRACY_DIR}/imgui/imconfig.h
        ${TRACY_DIR}/imgui/imgui.cpp
        ${TRACY_DIR}/imgui/imgui_demo.cpp
        ${TRACY_DIR}/imgui/imgui_draw.cpp
        ${TRACY_DIR}/imgui/imgui.h
        ${TRACY_DIR}/imgui/imgui_internal.h
        ${TRACY_DIR}/imgui/imgui_tables.cpp
        ${TRACY_DIR}/imgui/imgui_widgets.cpp
        ${TRACY_DIR}/imgui/imstb_rectpack.h
        ${TRACY_DIR}/imgui/imstb_textedit.h
        ${TRACY_DIR}/imgui/imstb_truetype.h
        ${TRACY_DIR}/imgui/misc/freetype/imgui_freetype.cpp
        ${TRACY_DIR}/imgui/misc/freetype/imgui_freetype.h
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_glfw.cpp
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_glfw.h
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3.cpp
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3.h
        ${TRACY_DIR}/profiler/src/imgui/imgui_impl_opengl3_loader.h
)

target_include_directories(TracyImGui
        PUBLIC
    ${TRACY_DIR}/imgui
)

target_link_libraries(TracyImGui
        PRIVATE
        PkgConfig::freetype
)
set_target_properties(TracyImGui
        PROPERTIES
        CXX_STANDARD          17
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS        OFF
)