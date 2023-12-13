#!/bin/bash

#$Revision:001$
#$Wed Dec 13 11:06:05 AM +0545 2023$

# Variables
base=/home/user/test #Path from where to archive files from.
days=10
depth=1
run=0

# Check if the directory exists or not.
if [[ ! -d $base ]]
then
	echo "Directory does not exists."
	exit 1
fi

# Create archive folder if not
if [[ ! -d $base/archive ]]
then
	mkdir $base/archive
fi

# Find list of files larger than 20MB.
for i in `find $base -maxdepth $depth -type f -size +20M`
do
	if [[ $run -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] arhiving $i ==> $base/archive"
		gzip $i || exit 1
		mv $i.gz $base/archive || exit 1
	fi
done
