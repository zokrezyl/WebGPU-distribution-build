#!/usr/bin/env bash
set -e

#wget https://github.com/eliemichel/WebGPU-distribution/archive/refs/tags/dawn-7069.tar.gz

#tar -xzf dawn-7069.tar.gz

#mv WebGPU-distribution-dawn-7069 webgpu


cmake -B build -DCMAKE_BUILD_TYPE=Release -DWEBGPU_BACKEND=DAWN -DWEBGPU_BUILD_FROM_SOURCE=ON

cmake --build build --config Release
