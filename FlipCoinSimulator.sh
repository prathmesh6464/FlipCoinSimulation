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


#VARIABLE FOR DOUBLE COIN COUNT FEATURE
declare -A doubleFlipCoinCount


#TAKING INPUT FOR FLIPPING DOUBLE COIN
read -p "Enter A Number To Flip The coin : " doubleFlipCoin


#TAKING COUNTS IN DICTIONARY
for((iter=0;iter<$doubleFlipCoin;iter++))
do
   randomValue=$((RANDOM%4))
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


#VARIABLE FOR TRIPLE COIN COUNT FEATURE
declare -A threeFlipCoinCount


#TAKING INPUT FOR FLIPPING TRIPLE COIN
read -p "Enter A Number To Flip The coin : " threeFlipCoin


#TAKING COUNTS IN DICTIONARY
for((iter=0;iter<$threeFlipCoin;iter++))
do
   randomValue=$((RANDOM%8))
	if(($randomValue==0))
   then
      threeFlipCoinCount["HHH"]=$(("${threeFlipCoinCount["HHH"]}"+1))
   elif(($randomValue==1))
   then
      threeFlipCoinCount["HHT"]=$(("${threeFlipCoinCount["HHT"]}"+1))
   elif(($randomValue==2)) 
   then
      threeFlipCoinCount["HTH"]=$(("${threeFlipCoinCount["HTH"]}"+1))
	elif(($randomValue==3))
   then
      threeFlipCoinCount["THH"]=$(("${threeFlipCoinCount["THH"]}"+1))
   elif(($randomValue==4))
   then
      threeFlipCoinCount["TTT"]=$(("${threeFlipCoinCount["TTT"]}"+1))
   elif(($randomValue==5)) 
   then
      threeFlipCoinCount["TTH"]=$(("${threeFlipCoinCount["TTH"]}"+1))
	elif(($randomValue==6)) 
   then
      threeFlipCoinCount["THT"]=$(("${threeFlipCoinCount["THT"]}"+1))
   else
      threeFlipCoinCount["HTT"]=$(("${threeFlipCoinCount["HTT"]}"+1))
   fi
done


#DISPLAYING KEY AND VALUE OF DICTIONARY
echo "Key Of Dictionary   : " ${!threeFlipCoinCount[@]}
echo "Value Of Dictionary : " ${threeFlipCoinCount[@]}


#TAKING PERCENTAGE OF THREE COIN
echo "Percentage Of Head & Head & Head : " `echo "${threeFlipCoinCount["HHH"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Head & Head & Tail : " `echo "${threeFlipCoinCount["HHT"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Head & Tail & Head : " `echo "${threeFlipCoinCount["HTH"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Head & Head : " `echo "${threeFlipCoinCount["THH"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Tail & Tail : " `echo "${threeFlipCoinCount["TTT"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Tail & Head : " `echo "${threeFlipCoinCount["TTH"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Tail & Head & Tail : " `echo "${threeFlipCoinCount["THT"]}"/$threeFlipCoin*100 | bc -l`
echo "Percentage Of Head & Tail & Tail : " `echo "${threeFlipCoinCount["HTT"]}"/$threeFlipCoin*100 | bc -l`
