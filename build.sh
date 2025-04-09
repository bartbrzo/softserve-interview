#!/usr/bin/env bash
set -e
mkdir build && cd build
cmake ..
make
mkdir -p $PREFIX/bin
cp softserve-interview $PREFIX/bin
