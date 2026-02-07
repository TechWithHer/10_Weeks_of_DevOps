#!/bin/bash
#Bash supports associative arrays (key–value pairs), but only in Bash 4+.

# how to store the key-value pairs

declare -A myArray

myArray=([name]="Ayushi" [age]="29" [year]="2024")

echo "Name is ${myArray[name]}"
echo "This is ${myArray[year]} year"

