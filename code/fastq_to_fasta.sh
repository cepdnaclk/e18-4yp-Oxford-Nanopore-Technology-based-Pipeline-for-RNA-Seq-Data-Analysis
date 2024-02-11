#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

dir_input=$1
dir_output=$2
merged_file="all"

# Create the output directory if it doesn't exist
mkdir -p "$dir_output"

echo
echo "Converting .fastq files to .fasta"

# Loop through all .fastq files in the input directory
for file in "$dir_input"/*.fastq; do
    if [ -f "$file" ]; then
        # Extract filename without extension
        filename=$(basename -- "$file")
        filename_noext="${filename%.*}"

        # Run seqtk command on each file and save output to corresponding .fasta file
        seqtk seq -a "$file" > "$dir_output/$filename_noext.fasta"
    fi
done

# Check if all files are converted successfully
if [ "$(ls -A "$dir_output"/*.fasta 2>/dev/null)" ]; then
    echo "All .fastq files converted to .fasta successfully"
else
    echo "No .fastq files found in the input directory"
    exit 1
fi

# Concatenate all .fasta files into a single file named all.fasta
echo
echo "Merging all .fasta files"
cat "$dir_output"/*.fasta > "$dir_output/$merged_file.fasta"

# Check if merging was successful and display file name
if [ $? -eq 0 ]; then
    echo "Successfully merged all .fasta files into $merged_file.fasta"
else
    echo "Failed to merge .fasta files"
fi

# Zip the merged .fasta file
echo
echo "Zipping $merged_file.fasta"
zip "$$merged_file.zip" "$dir_output/$merged_file.fasta"

# Check if zipping was successful and display file name
if [ $? -eq 0 ]; then
    echo "Successfully zipped $merged_file.fasta as $merged_file.zip"
else
    echo "Failed to zip $merged_file.fasta"
fi
