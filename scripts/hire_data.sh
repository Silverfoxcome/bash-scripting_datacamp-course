#!/usr/bin/env bash

# Echo the first ARGV argument
echo $1

# cat all the files inside the hire_data/ directory
# Then pipe to grep using the first ARGV argument $1
# Then write out to a csv named using the first ARGV argument $1
cat ../data/hire_data/* | grep "$1" > "$1".csv
