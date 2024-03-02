#!/bin/bash

# Create subdirectories for each file extension
for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        mkdir -p "$extension"
        mv "$file" "$extension/"
        echo "Moved $file to $extension/"
    fi
done
