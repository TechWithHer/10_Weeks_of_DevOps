#!/bin/bash

#lets create a random number generator 

echo "Lets create a random number for you between 1 and 9"
sleep 5
Num=$(( $RANDOM % 9 + 1 ))
#Num=$RANDOM
echo "here it is $Num"
