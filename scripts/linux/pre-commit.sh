#!/bin/sh

# Run Clang-format
echo "Running Clang-format..."

# Format .c and .h files in Core/Src and Core/Inc directories
clang-format -i Core/Src/*.c Core/Inc/*.h

# Check if there are any changes after formatting
if ! git diff --exit-code; then
    echo "Clang-format found style violations. Commit aborted."
    exit 1
fi

echo "All checks passed. Proceeding with commit."
exit 0
