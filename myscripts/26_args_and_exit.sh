#!/bin/bash

set -x #debugging

# To access the arguments input from terminal after runing .sh file.
if [[ $# -eq 0 ]]
then
	echo "Please provide atleast one argument."
	exit 1
fi

echo "Hello $1"
echo "Bye $2"

echo "All arguments are $@"
echo "Number of arguments are $#"


# For loop to access values from arguments
for file in $@
do
	echo "Copying $file"
done
