#!/bin/bash

#Key and Value

declare -A myArr
myArr=([name]=rakshak [address]=kathmandu)

echo "name: ${myArr[name]}"
echo "address: ${myArr[address]}"
