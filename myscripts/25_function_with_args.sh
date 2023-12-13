#!/bin/bash

#Arguments
function welcome {
	echo "----------------------"
	echo "Welcome $1"
	echo "----------------------"
}

read -p "Name: " name
welcome $name


addition() {
	local num1=$1
	local num2=$2
	let sum=$num1+$num2
	echo "Sum of $num1 and $num2 is $sum"
}

read -p "Num1: " num1
read -p "Num2: " num2

addition $num1 $num2 
