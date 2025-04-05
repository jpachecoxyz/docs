#!/bin/bash

# Directory containing Org files (default is the current directory)
DIR="${1:-.}"

# Create an associative array to map note names to Denote IDs
declare -A id_map

# Step 1: Extract IDs from filenames like "20250324T201920--guia-para-llamado-de-programas-de-robot-desde-plc.org"
while IFS= read -r file; do
    if [[ "$file" =~ ([0-9T]+)--([^_.]+) ]]; then
        denote_id="${BASH_REMATCH[1]}"  # Extract timestamp
        note_name="${BASH_REMATCH[2]}"  # Extract the note name (excluding suffix)

        # Convert note name to lowercase and replace spaces with hyphens
        note_name_lower=$(echo "$note_name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

        # Store in the mapping (note name -> denote_id)
        id_map["$note_name_lower"]="$denote_id"
    fi
done < <(find "$DIR" -type f -name "*.org")

# Step 2: Process all .org files and replace links
find "$DIR" -type f -name "*.org" | while read -r file; do
    echo "Processing: $file"

    while IFS= read -r line; do
        if [[ "$line" =~ \[\[id:([0-9a-fA-F-]+)\]\[([a-zA-Z0-9 _-]+)\]\] ]]; then
            old_id="${BASH_REMATCH[1]}"
            note_name="${BASH_REMATCH[2]}"
            
            # Convert the note name to lowercase and replace spaces with hyphens
            note_name_lower=$(echo "$note_name" | tr "[:upper:]" "[:lower:]" | tr ' ' '-')

            # Check if we have a matching Denote ID
            if [[ -n "${id_map[$note_name_lower]}" ]]; then
                new_id="${id_map[$note_name_lower]}"
                new_link="[[denote:$new_id][$note_name_lower]]"

                # Replace in the file
                sed -i "s|\[\[id:$old_id\]\[$note_name\]\]|$new_link|g" "$file"
            fi
        fi
    done < "$file"
done

echo "✅ Link replacement completed!"
