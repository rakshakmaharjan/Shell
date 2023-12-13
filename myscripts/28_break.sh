#!/bin/bash

# Break in loop

n=6

for i in 1 2 3 4 5 6 7 8 9 10
do
	if [[ $n == $i ]]
	then
		echo "$n is found."
		break
	fi
	echo "Number is $i"
done
