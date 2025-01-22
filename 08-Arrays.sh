#!/bin/bash

FRUITS=("apple" "banana" "mango")

echo "I am :${FRUITS[0]}"  ## this will print I am apple
echo "I am :${FRUITS[1]}"  ## this will print I am banana
echo "I am :${FRUITS[2]}"  ## this will print I am mango
echo "We have collected: ${FRUITS[@]}"  ### This will print output as below - we have collected apple banana mango
 




