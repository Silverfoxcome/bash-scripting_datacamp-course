#!/usr/bin/env bash

# Taking an argument (a file)
file=$1

# extract the accuracy score (number) from the file and store it in a variable
accuracy=$(grep "Accuracy" $file | sed 's/.* //')

# conditionally sort the model result files into one of the two folders
if [ $accuracy -ge 90 ]; then
    mv $file ../data/model_results/good_models
else
    mv $file ../data/model_results/bad_models
fi


