#!/bin/bash

# Prompt the user for the directory path or 'q' to quit
while true; do
    echo "Type the absolute path of the directory of your logs (or 'q' to quit):"
    read directory

    # Check if the user wants to quit
    if [ "$directory" = "q" ]; then
        exit 0
    fi

    # Check if the directory exists
    if [ -d "$directory" ]; then
        break
    else
        echo "Directory '$directory' doesn't exist."
        echo ""
    fi
done


# Define the default destination directory name
destination_name="compressed_logs"


# Define the destination directory for compressed logs
new_directory="$directory"/"$destination_name"


# Check if the destination directory already exists
while true; do
    if [ -d "$new_directory" ]; then
        echo ""
        echo "The destination directory '$new_directory' already exists."
        echo "Please choose a different name for your directory to store the compressed files."
        echo ""
        read destination_name
        new_directory="$directory"/"$destination_name"
    else
        break
    fi
done


# Create the destination directory
mkdir "$new_directory"


# Check if the destination directory was successfully created
if [ -d "$new_directory" ]; then
    echo ""
    echo "The destination directory '$new_directory' is created."
    echo ""
    sleep 1
else
   echo "The destination directory '$new_directory' could not be created."
   echo ""
   exit 1
fi


# Loop through log files in the source directory
for file in "$directory"/*.log; do
    # Compress the log file and suppress error messages if any
    tar -czf "$file".tar.gz "$file" 2>/dev/null; echo "Compressed '$file'..." || echo "~~~Failed to compress '$file'~~~"

    # Move the compressed file to the destination directory and suppress error messages if any
    mv "$file".tar.gz "$new_directory" 2>/dev/null || echo "Failed to move '$file'"
done


echo ""
echo "Compressed files are stored in '$new_directory' directory."
echo ""
sleep 5
echo "Navigating to '$new_directory'..."
echo ""
cd "$new_directory"
sleep 3
echo "Listing files..."
echo ""
sleep 1
ls -l "$new_directory"

echo ""
