#!/bin/bash

#Arrays
myArray=(1 2 hello "hi")

echo "All values in array: ${myArray[*]}"

echo "Third index: ${myArray[2]}"

#Length of Array
echo "Legth of array: "${#myArray[*]}

echo "${myArray[*]:1}"
echo "Values of index 1 and 2: ${myArray[*]:1:2}"


#Update array
myArray+=(5 6 8)

echo "${myArray[*]}"
