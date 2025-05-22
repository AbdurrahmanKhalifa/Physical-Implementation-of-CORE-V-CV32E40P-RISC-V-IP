#!/bin/bash

INPUT_FILE="$1"
OUTPUT_DIR="lint_log"
OUTPUT_FILE="$OUTPUT_DIR/unique_lint.log"

mkdir -p "$OUTPUT_DIR"

echo "UNIQUE LINT WARNINGS EXTRACTED"
echo "==============================" > "$OUTPUT_FILE"

# Extract all LINT warnings (skip LINT-99 if needed)
# Write to file with single space between entries
grep "Warning:.*(LINT-" "$INPUT_FILE" | grep -v "LINT-99" | awk -F '[()]' '{
  lint_code = $2;
  if (!seen[lint_code]++) {  # Only print the first occurrence per LINT code
    print "[" lint_code "] " $0 >> "'"$OUTPUT_FILE"'"
    print "" >> "'"$OUTPUT_FILE"'"  # Add empty line
  }
}' 

# Add summary to the file
echo "" >> "$OUTPUT_FILE"
echo "TOTAL UNIQUE LINT TYPES FOUND: $(grep -o "(LINT-[0-9]*)" "$INPUT_FILE" | sort -u | wc -l)" >> "$OUTPUT_FILE"

# Also show output in terminal
cat "$OUTPUT_FILE"
