#!/bin/bash


echo "----- Interactive Input -----"
read -p "Enter your name: " name
read -p "Enter your age: " age

echo
echo "----- Command Line Arguments -----"
arg1=$1
arg2=$2

echo
echo "----- Output -----"
echo "Name (user input): $name"
echo "Age  (user input): $age"
echo "Argument 1       : $arg1"
echo "Argument 2       : $arg2"

 
