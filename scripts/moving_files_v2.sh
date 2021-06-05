#!/usr/bin/env bash

# variable for the argument file
sfile=$1

# Looking for good logs. Have to contain both "SRVM_" AND "vpt"
if grep -q "SRVM_" $sfile && grep -q "vpt" $sfile; then
    # if the file matches, move it 
    mv $sfile good_logs/  
    # path to directory good_logs/ relative to the folder where the files are
fi

