#!/bin/bash

# This script automates the process of publishing the Homebrew formula for DevLink CLI.

set -e

FORMULA_PATH="../Formula/devlink.rb"

# Check if the formula file exists
if [ ! -f "$FORMULA_PATH" ]; then
  echo "Error: Formula file not found at $FORMULA_PATH"
  exit 1
fi

# Update the Homebrew formula
echo "📦 Updating Homebrew formula..."
brew update

# Publish the formula
echo "🚀 Publishing the DevLink CLI formula..."
brew tap-new devlink/tap
brew tap devlink/tap

# Install the formula
brew install devlink/tap/devlink

# Clean up
echo "🧹 Cleaning up..."
brew cleanup

echo "✅ DevLink CLI formula published successfully!"