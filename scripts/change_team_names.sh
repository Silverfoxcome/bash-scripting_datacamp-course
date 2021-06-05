#!/bin/bash
sed 's/Cherno/Cherno City/' ../data/soccer_scores.csv | sed 's/Arda/Arda United/' > ../data/soccer_scores_edited.csv
