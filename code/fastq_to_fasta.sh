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
if [ -d "$input" ]; then
    # Loop through all .fastq files in the input directory
    for file in "$input"/*.fastq; do
        if [ -f "$file" ]; then
            # Extract filename without extension
            filename=$(basename -- "$file")
            filename_noext="${filename%.*}"

            # Run seqtk command on each file and save output to corresponding .fasta file
            seqtk seq -a "$file" > "$output/$filename_noext.fasta"
        fi
    done

    # Check if any files are converted successfully
    if [ "$(ls -A "$output"/*.fasta 2>/dev/null)" ]; then
        echo "All .fastq files converted to .fasta successfully"
    else
        echo "No .fastq files found in the input directory"
        exit 1
    fi

    # Concatenate all .fasta files into a single file named all.fasta
    echo "Merging all .fasta files"
    cat "$output"/*.fasta > "$output/$cleaned_data.fasta"

    # Check if merging was successful and display file name
    if [ $? -eq 0 ]; then
        echo "Successfully merged all .fasta files into $cleaned_data.fasta"
    else
        echo "Failed to merge .fasta files"
    fi
elif [ -f "$input" ]; then
    seqtk seq -a "$input" > "$output/$cleaned_data.fasta"
else
    echo "Invalid input. Input must be a directory or file"
    exit 1
fi

# Zip the merged .fasta file if it exists
if [ -f "$output/$cleaned_data.fasta" ]; then
    echo "Zipping $cleaned_data.fasta"
    zip "$output/$cleaned_data.zip" "$output/$cleaned_data.fasta"

    # Check if zipping was successful and display file name
    if [ $? -eq 0 ]; then
        echo "Successfully zipped $cleaned_data.fasta as $cleaned_data.zip"
    else
        echo "Failed to zip $cleaned_data.fasta"
    fi
fi
