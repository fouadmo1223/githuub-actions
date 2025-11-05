#!/bin/bash
# Simple test script for src/app.js

# Stop the script on any error
set -e

echo "Running test for src/app.js..."

# Go to the script directory (important for CI)
cd "$(dirname "$0")"

# Run the Node app and capture output
node app.js > output.txt

# Check if output contains expected text
if grep -q "Hello, World!" output.txt; then
  echo "✅ Test passed: Correct output"
  rm output.txt
  exit 0
else
  echo "❌ Test failed: Output did not match expected result"
  cat output.txt
  rm output.txt
  exit 1
fi
