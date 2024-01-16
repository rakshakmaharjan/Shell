#!/bin/bash

# System Maintenance

# Log time
echo "System Maintenance Started at $(date)"
echo "System Maintenance Started at $(date)" >> log.txt

# Check disk space
echo "Checking Disk Space."
echo "Checking Disk Space." >> log.txt
df -h >> log.txt

# Update Packages
echo "Updating System Packages."
echo "Updating System Packages at $(date)" >> log.txt
sudo apt update && sudo apt upgrade -y


# Clean Temporary Files
echo "Cleaning Temporary Files."
echo "Cleaning Temporary Files at $(date)" >> log.txt
sudo apt autoclean
sudo apt autoremove -y

#Other Maintenance Tasks

# Log end time
echo "System Maintenance Completed at $(date)"
echo "System Maintenance Completed at $(date)" >> log.txt
echo "" >> log.txt
