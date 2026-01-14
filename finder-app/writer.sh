#!/bin/sh
writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
    echo "Error: Missing arguments"
    exit 1
fi

# Create directory path
mkdir -p "$(dirname "$writefile")"

# Write to file
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: File could not be created"
    exit 1
fi
