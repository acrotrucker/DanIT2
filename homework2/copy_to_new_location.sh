#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_location> <destination_location>"
    exit 1
fi

# Extract source location and destination location from arguments
source_location="$1"
destination_location="$2"

# Check if the source location exists
if [ ! -d "$source_location" ]; then
    echo "Error: Source location '$source_location' does not exist or is not a directory."
    exit 1
fi

# Check if the destination location exists, create it if not
if [ ! -d "$destination_location" ]; then
    mkdir -p "$destination_location"
fi

# Find any one file in the source location
source_file=$(find "$source_location" -type f | head -n 1)

# Check if any file is found
if [ -z "$source_file" ]; then
    echo "Error: No files found in source location '$source_location'."
    exit 1
fi

# Copy the file to the destination location
cp "$source_file" "$destination_location"

echo "File '$source_file' copied to '$destination_location'."

