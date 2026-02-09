#!bin/bash

read -p "What is your name?" name

#“Print this message before waiting for input” -p is for PROMPT 

echo "Your name is $name" 

declare -r age=25
echo "Your age is $age"

 
#Difference between read and declare