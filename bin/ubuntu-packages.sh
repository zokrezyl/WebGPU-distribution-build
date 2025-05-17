#!/usr/bin/env sh
set -e
apt-get update
apt-get install -y \
  git \
  libgl1-mesa-dev \
  cmake \
  ninja-build \
  python3 python3-pip python3-dev \
  build-essential \
  clang lld \
  libx11-dev \
  libxrandr-dev \
  libxinerama-dev \
  libxcursor-dev \
  libxi-dev \
  libx11-xcb-dev
