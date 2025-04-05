#!/bin/bash

# Directory containing the notes
DIR="${1:-.}"  # Defaults to the current directory if no argument is provided

# Find all .org files and process them
find "$DIR" -type f -name "*.org" | while read -r file; do
    echo "Processing: $file"
    
    # Ensure we're handling different newline encodings
    sed -i -E 's/^# -\*- jinx-languages: "es_ES"; -\*-$//g' "$file"
    
    # Remove the :PROPERTIES: block (multi-line)
    sed -i '/:PROPERTIES:/,/:END:/d' "$file"

    # Remove the first line if it is empty
    sed -i '1{/^$/d}' "$file"
done

echo "Cleanup completed!"
