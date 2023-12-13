#!/bin/bash

#Simple Calculator

read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2

echo "Choose Operation."
echo "+ = addition"
echo "- = subtraction"
echo "x = multiplication"
echo "/ = division"

read choice

case $choice in
	+)echo "$num1 + $num2 = $(($num1+$num2))";;
	-)
		let diff=$num1-$num2
		echo "$num1 - $num2 = $diff"
		;;
	x)echo "$num1 * $num2 = $(($num1*$num2))";;
	/)
		let div=$num1/$num2
		echo "$num1 / $num2 = $div"
		;;
	*)echo "Invalid Choice.";;
esac
