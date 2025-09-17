#!/bin/bash

# This script builds the DevLink CLI binary for distribution.

set -e

echo "🚀 Building DevLink CLI..."

# Define the source directory and output binary name
SOURCE_DIR="../path/to/devlink/source"  # Update this path to your actual source directory
OUTPUT_BINARY="devlink"

# Navigate to the source directory
cd "$SOURCE_DIR"

# Build the binary (assuming a Makefile is present)
make

# Move the built binary to the current directory
mv "$OUTPUT_BINARY" "../../$OUTPUT_BINARY"

echo "✅ DevLink CLI built successfully!"
echo "🎉 The binary is ready for distribution!"