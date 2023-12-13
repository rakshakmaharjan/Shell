#!/bin/bash

addition() {
	local x=$1
	local y=$2
	let add=$x+$y
	echo "$x + $y = $add"
}

subtraction() {
	local x=$1
        local y=$2
        let sub=$x-$y
        echo "$x - $y = $sub"
}

function multiplication {
        local x=$1
        local y=$2
        let mult=$x*$y
        echo "$x * $y = $mult"
}

function division {
        local x=$1
        local y=$2
        let div=$x/$y
        echo "$x / $y = $div"
}


read -p "Enter 1st Number: " x
read -p "Enter 2nd Number: " y

echo "Enter + for Addition"
echo "Enter - for Subtraction"
echo "Enter x for Multiplication"
echo "Enter / for Division"

read option

case $option in
	+) addition $x $y;;
	-) subtraction $x $y;;
	x) multiplication $x $y;;
	/) division $x $y;;
	*) echo "Invalid Option"
esac
