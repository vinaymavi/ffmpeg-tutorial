#!/bin/bash

# Check if the correct number of arguments were provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./convert.sh <input_file> <output_file>"
    exit 1
fi

# Assign the arguments to variables
input_file=$1
output_file=$2

# Use FFmpeg to convert the input file to the output file format
ffmpeg -i $input_file $output_file

# Example usage: ./scripts/convert.sh ./data/mp3/7b513798-d699-4e6f-b7ef-ca7dbace84d8.mp3 ./output/7b513798-d699-4e6f-b7ef-ca7dbace84d8.wav