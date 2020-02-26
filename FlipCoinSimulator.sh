#!/bin/bash -x
printf "Welcome\n"


#FLIPING COIN FOR HEAD OR TAIL
randomValue=$((RANDOM%2))
if(($randomValue==1))
then
	echo "Head"
else
	echo "Tail"
fi
