#!/bin/bash
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda3" | awk '{print $5}' | tr -d %)
TO="rakshakmaharjan@gmail.com"

if [[ $FU -ge 80 ]]
then
	echo "WARNING, Disk space is low $FU %."
	# If we want to send alert email use below with postfix setup in linux.
	# echo "WARNING, Disk space is low $FU %." | mail -s "Disk Space Alert!" $TO
else
	echo "All Good."
fi
