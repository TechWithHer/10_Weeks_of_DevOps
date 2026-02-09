#!/usr/bin/env bash
# Bash supports associative arrays (key–value pairs) in Bash 4+

declare -A myArray=(
  [name]="Ayushi"
  [age]="29"
  [year]="2024"
)

echo "Name is ${myArray[name]}"
echo "This is ${myArray[year]} year"