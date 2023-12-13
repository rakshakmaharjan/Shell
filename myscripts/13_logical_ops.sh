#!/bin/bash

#Logical Operators
#AND && Operator

read -p "Age: " age
read -p "Country: " country

if [[ $age -ge 18 && $country == "nepal" ]]
then
	echo "You can vote."
else
	echo "You cannot vote."
fi

#OR || Operator
read -p "Age: " age
read -p "Country: " country

if [[ $age -ge 18 || $country == "nepal" ]]
then
        echo "You can vote."
else
        echo "You cannot vote."
fi


