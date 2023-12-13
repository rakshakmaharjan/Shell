#!/bin/bash

#For Loop with Array

fruits=( mango banana watermelon guava )

length=${#fruits[*]}

for (( i=0; i<$length; i++ ))
do
	echo "${fruits[$i]}"
done
