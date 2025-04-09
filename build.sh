#!/bin/bash
set -e

: "${PREFIX:=/usr/local}"
TARGET_DIR="$PREFIX/bin"

mkdir -p build
cd build

cmake ..
make

if [ -w "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
    cp softserve-interview "$TARGET_DIR/"
    echo "Installed to: $TARGET_DIR/softserve-interview"
else
    LOCAL_DIR="$(pwd)/../local/bin"
    mkdir -p "$LOCAL_DIR"
    cp softserve-interview "$LOCAL_DIR/"
    echo "No permission to write to $TARGET_DIR"
    echo "Installed locally to: $LOCAL_DIR/softserve-interview"
    echo "Consider adding $LOCAL_DIR to your PATH"
fi

