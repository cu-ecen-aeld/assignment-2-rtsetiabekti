#!/bin/sh
filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
    echo "Error: Missing arguments"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: Not a directory"
    exit 1
fi

# X = number of files
X=$(find "$filesdir" -type f | wc -l)
# Y = number of matching lines
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
