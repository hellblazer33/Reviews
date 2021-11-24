#!/bin/bash

flag=0

echo "Enter no. to check for prime"
read number

for (( counter=2; counter<=$(( $number / 2 )); counter++ ))
do
	if [ $(( $number % $counter )) -eq 0 ]
	then
		flag=1
		break
	fi
done

if [ $number -eq 1 ]
then
        flag=1
fi

if [ $flag -eq 1 ]
then
	echo "Not prime"
else
	echo "Prime" 
	
fi
