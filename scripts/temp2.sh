#!/usr/bin/env bash

# creating three variables from the temp data files' contents
temp_a=$(cat ../data/temps/region_A)
temp_b=$(cat ../data/temps/region_B)
temp_c=$(cat ../data/temps/region_C)

# printing out the three variables
echo "The temperatures were $temp_a, $temp_b and $temp_c"
