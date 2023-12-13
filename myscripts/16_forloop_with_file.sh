#!/bin/bash

#For Loop with File

file="/home/user/myscripts/names.txt"

for name in $(cat $file)
do
	echo "$name"
done
