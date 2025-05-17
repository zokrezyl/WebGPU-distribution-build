#!/usr/bin/env bash

set -e

# Make sure Homebrew is up-to-date
brew update

# Install latest LLVM (this includes clang, clang++, libc++, etc.)
brew install llvm@19

# Optionally install other dependencies for Dawn
brew install cmake ninja python pkg-config

# Optionally verify installation
brew info llvm
