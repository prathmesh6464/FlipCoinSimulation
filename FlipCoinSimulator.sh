#!/bin/bash -x
printf "Welcome\n"


#VARIABLE
declare -A flipCoinCount


#TAKING INPUT FOR FLIPPING A COIN
read -p "Enter A Number To Flip The coin : " flipCoin


#TAKING COUNTS IN DICTIONARY
for((iter=0;iter<$flipCoin;iter++))
do
   randomValue=$((RANDOM%4))
	echo "random value : " $randomValue
   if(($randomValue==0))
   then
      flipCoinCount["HH"]=$(("${flipCoinCount["HH"]}"+1))
   elif(($randomValue==1))
   then
      flipCoinCount["TT"]=$(("${flipCoinCount["TT"]}"+1))
   elif(($randomValue==2)) 
	then
	flipCoinCount["HT"]=$(("${flipCoinCount["HT"]}"+1))
	else
	flipCoinCount["TH"]=$(("${flipCoinCount["TH"]}"+1))
   fi
done


#DISPLAYING KEY AND VALUE OF DICTIONARY
echo "Key Of Dictionary   : " ${!flipCoinCount[@]}
echo "Value Of Dictionary : " ${flipCoinCount[@]}



#TAKING PERCENTAGE
echo "Percentage Of Head & Head : " `echo "${flipCoinCount["HH"]}"/$flipCoin*100 | bc -l`
echo "Percentage Of Tail & Tail : " `echo "${flipCoinCount["TT"]}"/$flipCoin*100 | bc -l`
echo "Percentage Of Head & Tail : " `echo "${flipCoinCount["HT"]}"/$flipCoin*100 | bc -l`
echo "Percentage Of Tail & Head : " `echo "${flipCoinCount["TH"]}"/$flipCoin*100 | bc -l`

