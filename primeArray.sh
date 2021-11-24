#!/bin/bash

flag=0
arrayOfNumbers=( 2 3 23 1 29 )

checkPrime()
{
	for(( counter=2; counter<=(( $1 / 2)); counter++ ))
	do
		if [ $(( $1 % $counter )) -eq 0 ]
		then
			flag=1
			break
		fi
	done
	
	if [ $1 -eq 1 -o $1 -eq 0 ]
	then
		echo "$1 is Not Prime"	

	elif [ $flag -eq 1 ]
	then
		echo "$1 is Not Prime"
	else
		echo "$1 is Prime"
	fi

}


for(( counter2=0; counter2<5; counter2++ ))
do
	checkPrime ${arrayOfNumbers[$counter2]}
done

