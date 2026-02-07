#!/bin/bash

#experimenting with args 

echo "First argument is $1"
echo "Second argument is $2"
echo "All the arguments are $@"
echo "Number of arguments are $#"

#for loop to access the values from arguments
for character in $@
do 
	echo "Copying character - $character"
done

