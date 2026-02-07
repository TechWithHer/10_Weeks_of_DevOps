#!/bin/bash

echo "Provide an option"
echo "A for printing date"
echo "B for list of scripts" 

read OPTION

case $OPTION in
	A)
		echo "Today's date is:"
		date;;
	B) 
		echo "List of scripts in current directory are:" 
		ls;;
esac

echo "Please provide valid value"