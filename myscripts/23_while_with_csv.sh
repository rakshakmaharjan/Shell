#!/bin/bash

#While Loop with CSV file
while IFS="," read id name age #IFS=Internal Field Separator
do
	echo "$id	$name	$age"
 
	#echo "Id: $id"
	#echo "Name: $name"
	#echo "age: $age"

done < test.csv

#Another method to not display top row.
echo " "
#echo "ID	NAME	AGE"
cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "$id	$name	$age"
done
