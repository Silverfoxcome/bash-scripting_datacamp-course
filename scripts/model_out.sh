#!/usr/bin/env bash

count=0

# to run from model_out_ex
for file in model_out/*
do
    # case statement
    # and to examine the content of each file => cat file
    case $(cat $file) in

        # looking for the tree models I want
        *"Random Forest"*|*GBM*|*XGBoost*)
            mv $file tree_models
            ((count=count+1)) ;;
        
        # Models I don't want
        *KNN*|*Logistic*)
            rm $file ;;

        # If the file doesn't have any of the models above
         *)
            echo "Unknown model in $file"
    esac
done

echo "There are $count tree based models in this directory"

