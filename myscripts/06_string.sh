#!/bin/bash

#String Operations

myVar="Hello World"

length=${#myVar}
echo "Length: $length"

upper=${myVar^^}
echo "To upper: $upper"

lower=${myVar,,}
echo "To lower: $lower"

echo "To upper Again: ${myVar^^}"

name="rakshak"
replace=${myVar/World/$name}
echo "Replaced: $replace"

slice=${myVar:6:11}
echo "Sliced from 6th to 11th character: $slice"


