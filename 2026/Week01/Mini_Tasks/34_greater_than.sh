#!/bin/bash

echo "Which is greater"

read -p "Enter A" a
read -p "Enter B" b 

if [ "$a" -gt "$b" ]; then
	echo "A is greater than B"
else
	echo "Yay"
fi

