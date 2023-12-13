#!/bin/bash

#If-Else Statement

read -p "Enter Marks: " marks

if [[ $marks -gt 40 ]]
then
	echo "Result, Pass"
else
	echo "Result, Fail"
fi
