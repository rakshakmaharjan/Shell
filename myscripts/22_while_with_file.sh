#!/bin/bash

#While Loop with File

while read myVar
do
	echo "$myVar"
#done < names.txt
done < /home/user/names.txt
