#!/bin/bash


for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "Number is $i"
done

for name in Raju Sham Baburao
do
	echo "Name is $name"
done

#using wildcard
read -p "Enter a number: " max

for i in $(seq 1 $max)
do
    echo "Number is $i"
done

