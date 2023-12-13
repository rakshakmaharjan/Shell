#!/bin/bash
#$Revision:001$
#$Wed Dec 13 12:19:24 PM +0545 2023$

# Check if user is sudo/root or not.
if [[ "${UID}" -ne 0 ]]
then
	echo "Please login with root or sudo user."
	exit 1
fi

# User should provide atleat one argument as username else guide them.
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} username Comment.."
	echo "Create user with name username and comments"
	exit 1
fi

# Store 1st argument as username.
username="${1}"

# In case of more than one argument, store it as account comments.
shift
comment="${@}"

#  Create a password.
#password=$(date +%s%N)
password=$(echo $RANDOM)

# Create a user
useradd -c $comment -m $username

# Check if user is successfully created or not.
if [[ $? -ne 0 ]]
then
	echo "The account could not be created."
	exit 1
fi

# Set password for user
#passwd $password $username
#echo $password | passwd --stdin $username
echo "$username:$password" | chpasswd

# Check if password is successfully set or not.
if [[ $? -ne 0 ]]
then
	echo "Password could not be set."
	exit 1
fi

# Force password change at first login
passwd -e $username

# Display username, password and hostname where the user is created.
echo
echo "Username: $username"
echo
echo "Password: $password"
echo
echo "Hostname: $(hostname)"

