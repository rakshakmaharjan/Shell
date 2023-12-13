#!/bin/bash

#Ternary Operation
# condition1 && condition2 || condition3

age=25

[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
