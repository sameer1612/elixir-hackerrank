#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
    echo "Please provide a file path."
    exit 1
fi

# Get the file path and file name
solution_file="$1"
file_name=$(basename "$solution_file")

# Extract the problem URL from the first line of the solution file
problem_url=$(head -n 1 "$solution_file" | grep -o 'http.*')

# Check if the problem URL was found
if [ -z "$problem_url" ]; then
    echo "No problem URL found in the first line of the solution file."
    exit 1
fi

# Create the GitHub URL for the solution
repo_url="https://github.com/sameer1612/elixir-hackerrank/blob/main"
solution_url="${repo_url}/${solution_file}"

# Extract the problem name from the file name and humanize it
problem_name=$(basename "$solution_file" .exs | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))} 1')

# Append the entry to the README.md file
echo "| [$problem_name]($problem_url) | [Solution]($solution_url) |" >> README.md

echo "Entry added to README.md: $problem_name"
