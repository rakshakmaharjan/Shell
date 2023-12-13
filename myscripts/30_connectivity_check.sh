#!/bin/bash

read -p "Enter site you want to check: " site
ping -c 1 $site &> /dev/null
#sleep 5s

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "Unsuccessful to connect to $site"
fi
