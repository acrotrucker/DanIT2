#!/bin/bash

# Ask the user for input
echo -n "Enter a sentence: "
read sentence

# Use awk to reverse the sentence word by word
reversed_sentence=$(echo "$sentence" | awk '{ for (i=NF; i>0; i--) printf "%s ",$i }')

# Print the reversed sentence
echo "Reversed Sentence: $reversed_sentence"

