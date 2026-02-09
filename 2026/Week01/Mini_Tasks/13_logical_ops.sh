#!/bin/bash

#AND OPERATOR read -p "What is your age: " age
read -p "What is your country: " country

country=$(echo "$country" | tr '[:upper:]' '[:lower:]')

if [[ $age -ge 18 && $country == "india" ]]; then
    echo "You can vote"
else
    echo "You cannot vote"
fi
