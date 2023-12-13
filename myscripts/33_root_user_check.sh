#!/bin/bash

# Checking if the user is root or not

if [[ $UID -eq 0 ]]
then
	echo "It is Root user."
else
	echo "It is not user."
fi
