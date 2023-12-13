#!/bin/bash

#While Loop

count=1
num=10

while [[ $count -le $num ]]
do
	echo "$count"
	let count++
done
