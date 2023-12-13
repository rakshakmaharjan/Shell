#!/bin/bash

#Arthmetic Operations

x=10
y=50

let sum=$x+$y
echo "$x + $y = $sum"

let diff=$x-$y
echo "$x - $y = $diff"

echo "$x * $y = $(($x*$y))"

echo "$y / $x = " $(($y/$x))

let mod=$y%$x
echo "$y % $x = $mod"
