#!/usr/bin/env sh

apt-get update
apt-get install -y \
  git \
  cmake \
  ninja-build \
  python3 python3-pip python3-dev \
  build-essential \
  libx11-dev \
  clang lld \
  libxrandr-dev \
  libxinerama-dev \
  libxcursor-dev \
  libxi-dev 
