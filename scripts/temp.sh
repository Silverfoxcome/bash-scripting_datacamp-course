#!/usr/bin/env bash

# Get the first argument ARGV into a variable
temp_f=$1

# convert to celsius
temp_c=$(echo "scale=2; ($temp_f-32)*5/9" | bc)

# print the celsius temp
echo "$temp_c"

