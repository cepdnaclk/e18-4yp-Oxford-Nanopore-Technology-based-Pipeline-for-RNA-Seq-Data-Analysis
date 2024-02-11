#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory_or_file> <output_directory>"
    exit 1
fi

input=$1
output=$2
cleaned_data="cleaned_data"

# Create the output directory if it doesn't exist
mkdir -p "$output"

# Check if the input is a directory or a file
if [ -d "$output" ]; then
    # Loop through all .fastq files in the input directory
    for file in "$input"/*.fastq; do
        if [ -f "$file" ]; then
            # Extract filename without extension
            filename=$(basename -- "$file")
            filename_noext="${filename%.*}"

            # Run seqtk command on each file and save output to corresponding .fasta file
            porechop -i ."$file" -o "$output/$filename_noext.fastq"
        fi
    done

    # Check if any files are converted successfully
    if [ "$(ls -A "$output"/*.fastq 2>/dev/null)" ]; then
        echo "All .fastq files cleaned successfully"
    else
        echo "No .fastq files found in the input directory"
        exit 1
    fi
elif [ -f "$output" ]; then
    seqtk seq -a "$input" > "$output/$cleaned_data.fasta"
else
    echo "Invalid output path. output must be a directory or file"
    exit 1
fi
