#!/bin/bash

# Path to the hooks directory within the repository
HOOKS_DIR=".hooks"

# Path to the Git hooks directory
GIT_HOOKS_DIR=".git/hooks"

# Loop through each file in the .hooks directory
for file in "$HOOKS_DIR"/*; do
    filename=$(basename "$file")
    
    # Check if the file is executable
    if [ -x "$file" ]; then
        # Copy the hook script to the .git/hooks directory
        cp "$file" "$GIT_HOOKS_DIR/$filename"
        echo "Copied $filename to $GIT_HOOKS_DIR"
    else
        echo "Skipping $filename: Not executable"
    fi
done

echo "Hooks setup complete."
