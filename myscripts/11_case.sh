#!/bin/bash

#Case Statement

echo "Enter a choice"
echo "a = To display current date."
echo "b = List files of current directory."
echo "c = Display current working directory."

read choice

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Not valid choice."
esac
