#!/bin/bash -x
printf "Welcome\n"


#VARIABLE
declare -A flipCoinCount


#TAKING INPUT FOR FLIPPING A COIN
read -p "Enter A Number To Flip The coin : " flipCoin


#TAKING COUNTS IN DICTIONARY
for((iter=0;iter<$flipCoin;iter++))
do
   randomValue=$((RANDOM%2))
   if(($randomValue==1))
   then
      flipCoinCount["Head"]=$(("${flipCoinCount["Head"]}"+1))
   else
      flipCoinCount["Tail"]=$(("${flipCoinCount["Tail"]}"+1))
   fi
done


#DISPLAYING KEY AND VALUE OF DICTIONARY
echo "Key Of Dictionary   : " ${!flipCoinCount[@]}
echo "Value Of Dictionary : " ${flipCoinCount[@]}



#TAKING PERCENTAGE
echo "Percentage Of Head : "`echo "${flipCoinCount["Head"]}"/$flipCoin*100 | bc -l`
echo "Percentage of Tail : " `echo "${flipCoinCount["Tail"]}"/$flipCoin*100 | bc -l`
