#!/bin/bash

# Define source and destination directories.
source="/home/user/source"
destination="/home/user/backup"

# Get Date and Time of Backup.
timestamp=$(date +%Y%m%d_%H%M%S)

# Define backup name.
backup_name="backup_$timestamp.tar.gz"
backup="backup_$timestamp.gz"

#tar -zcvf "$destination/$backup_name" -C "$source" . #Backup using TAR.

gzip -r "$source" > "$destination/$backup" #Backup using gzip.

# Check if Backup is Successful or not.
if [[ $? -eq 0 ]]
then
	echo "Backup Success."
else
	echo "Backup Failed."
fi
