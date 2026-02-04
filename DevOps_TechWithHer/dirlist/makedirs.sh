#!/bin/bash

dir_name=$1 
sequence=$2
total_dir=$3
n=$sequence
echo "Lets make $total_dir directories in the sequence of $dir_name $sequence, $dir_name $[n+1], $dir_name $[n+2]...and so on"
echo $n
while [ $n -le  $total_dir ]; do
	mkdir "$dir_name $n"
	echo "Dir $dir_name $n is created"
	((n++))
done
	echo "Dir creation completed, enjoy!"

