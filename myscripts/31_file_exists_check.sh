#!/bin/bash

filepath="/home/user/myscripts/test.csv"

if [[ -f $filepath ]]
then
	echo "file exists."
else
	echo "file does not exists."
fi

filepath2="/home/user/myscripts/text2.csv"

if [[ ! -f $filepath2 ]]
then
	echo "creating new file."
	touch text2.csv
fi
