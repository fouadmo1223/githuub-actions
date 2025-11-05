
#!/bin/bash
# Simple test script for greet.js

# Exit if any command fails
set -e

echo "Running test for greet.js..."

# Run the file directly to ensure it works
node greet.js > output.txt

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
