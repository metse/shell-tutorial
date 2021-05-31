#!/bin/zsh

# Create a report file for a single shipping container
# Author: Metse

container="$1"
directory="$2"
output="$directory/$container.csv"

mkdir -p -- "$directory"
grep -- "$container" shipments.csv > "$output"

echo "Wrote report $output"
