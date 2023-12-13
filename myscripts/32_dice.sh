#!/bin/bash

# Generating random number between 1 to 6

number=$(( $RANDOM % 6 + 1 ))
echo "Number is $number"

