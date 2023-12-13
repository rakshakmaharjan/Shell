#!/bin/bash

#Elif Statement

read -p "Enter Marks: " marks

if (( $marks >= 80 ))
then
	echo "Result: Distinction"
elif (( $marks >= 70 ))
then
	echo "Result: First Division"
elif [[ $marks -ge 60 ]]
then
	echo "Result: Second Division"
elif [[ $marks -ge 50 ]]
then
	echo "Result: Third Division"
else
	echo "Result: Fail"
fi
