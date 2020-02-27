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


#VARIABLE
declare -A doubleFlipCoinCount


#TAKING INPUT FOR FLIPPING DOUBLE COIN
read -p "Enter A Number To Flip The coin : " doubleFlipCoin


#TAKING COUNTS IN DICTIONARY
for((iter=0;iter<$doubleFlipCoin;iter++))
do
   randomValue=$((RANDOM%4))
	echo "random value : " $randomValue
   if(($randomValue==0))
   then
      doubleFlipCoinCount["HH"]=$(("${doubleFlipCoinCount["HH"]}"+1))
   elif(($randomValue==1))
   then
      doubleFlipCoinCount["TT"]=$(("${doubleFlipCoinCount["TT"]}"+1))
   elif(($randomValue==2)) 
	then
		doubleFlipCoinCount["HT"]=$(("${doubleFlipCoinCount["HT"]}"+1))
	else
		doubleFlipCoinCount["TH"]=$(("${doubleFlipCoinCount["TH"]}"+1))
   fi
done


#DISPLAYING KEY AND VALUE OF DICTIONARY
echo "Key Of Dictionary   : " ${!doubleFlipCoinCount[@]}
echo "Value Of Dictionary : " ${doubleFlipCoinCount[@]}


#TAKING PERCENTAGE OF DOUBLE COIN
echo "Percentage Of Head & Head : " `echo "${doubleFlipCoinCount["HH"]}"/$doubleFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Tail : " `echo "${doubleFlipCoinCount["TT"]}"/$doubleFlipCoin*100 | bc -l`
echo "Percentage Of Head & Tail : " `echo "${doubleFlipCoinCount["HT"]}"/$doubleFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Head : " `echo "${doubleFlipCoinCount["TH"]}"/$doubleFlipCoin*100 | bc -l`

