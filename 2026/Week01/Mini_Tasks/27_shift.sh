#!/bin/bash

# to create a user and provide username and description

echo "Creating user"
echo "Username is $1"
shift
echo "Description is $@"

<<COMMENT
The shift command in bash scripting is used to shift the positional parameters to the left. 
When you use shift, the value of $1 is discarded, and all other positional parameters are shifted down by one. 
This means that $2 becomes $1, $3 becomes $2, and so on. The original $1 is lost.
COMMENT

