#!/bin/bash

while read myVar 
do
	echo "Value from file is $myVar"

done < file.txt 

#but read is for input value then why this ?
