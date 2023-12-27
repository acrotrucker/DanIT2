#!/bin/bash

# Ask the user for the file name
echo -n "Enter the file name: "
read filename

# Check if the file exists
if [ -e "$filename" ]; then
    echo "The file '$filename' exists in the current directory."
else
    echo "The file '$filename' does not exist in the current directory."
fi

