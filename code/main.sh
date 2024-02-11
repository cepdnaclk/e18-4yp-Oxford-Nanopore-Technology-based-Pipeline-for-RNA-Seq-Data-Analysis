#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

dir_input=$1
dir_output=$2
dir_raw_data="raw_data"
dir_fastq_data="uncleaned_fastq_output"
dir_cleaned_fastq_data="cleaned_fastq_output"
dir_fasta_data="fasta_output.fasta"
dir_pass_barcode="pass_barcode"
dir_fail_barcode="fail_barcode"

# # Remove existing files and directories in the output directory
# echo "Removing existing files and directories in $dir_output..."
# if rm -rf "$dir_output"/*; then
#     echo "Successfully removed all files and directories."
# else
#     echo "Failed to remove files and directories."
# fi

# # Create the output/raw_data directory if it doesn't exist
# mkdir -p "$dir_output/raw_data"

# # Copy .fast5 files from pass and fail directories to output/raw_data
# echo
# echo "Copying all .fast5 files to $dir_output/raw_data..."

# # Find directories matching the pattern in the input directory and copy .fast5 files
# find "$dir_input" \( -name "$dir_pass_barcode*" -o -name "$dir_fail_barcode*" \) -type d -exec sh -c '
#     for dir do
#         for file in "$dir"/*.fast5; do
#             if [ -f "$file" ]; then
#                 cp -t "$2/raw_data" -- "$file"
#                 # Increment counter
#             fi
#         done
#     done
# ' sh {} "$dir_output" \;

# # Check if the copying operation was successful
# if [ $? -eq 0 ]; then
#     echo "Successfully copied all files."
# else
#     echo "Failed to copy files."
# fi



# # Call the script to run guppy_basecaller
# echo
# ./run_guppy_with_cuda.sh "$dir_output/$dir_raw_data" "$dir_output/$dir_fastq_data"


# Call the script to run guppy_basecaller
echo
./run_data_filter.sh "$dir_output/$dir_fastq_data/pass" "$dir_output/$dir_cleaned_fastq_data --al-all"


# Call the script to run seqtk
echo
./fastq_to_fasta.sh "$dir_output/$dir_cleaned_fastq_data" "$dir_output/$dir_fasta_data"

