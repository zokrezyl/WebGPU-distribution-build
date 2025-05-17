cmake_minimum_required(VERSION 3.31)

project(WebGPUBuildTest)

add_subdirectory(webgpu)


# Create your target (executable or library)
add_executable(WebGPUBuildTest main.cpp)

# Indicate that your target depends on WebGPU
target_link_libraries(WebGPUBuildTest PRIVATE webgpu)

