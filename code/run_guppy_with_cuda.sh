#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

dir_input=$1
dir_output=$2

# Create the output/raw_data directory if it doesn't exist
mkdir -p "$dir_output"

guppy_basecaller -i "$dir_input" -s "$dir_output" --flowcell FLO-MIN106 --kit SQK-PCB109 -x 'cuda:all'

