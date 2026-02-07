#!/bin/bash

#Extracting value from a file names.txt

FILE="/Users/apple/Desktop/TechWithHer/10_Weeks_of_DevOps/2026/Week01/Mini_Tasks/file.txt"

for name in $(cat $FILE)
do
	echo "Name is $name" 
done


