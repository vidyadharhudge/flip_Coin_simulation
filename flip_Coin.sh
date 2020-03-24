#!/bin/bash 
declare -A  coin
declare -A  pertoss
echo "welcome to flip coin games"
function Flip_Coin()
{ 
  maximum=0
  for (( i=1; i<=No_Of_Toss; i++ ))
  do
         coinface=""
     for (( j=1; j<=No_Of_Coins; j++ ))
     do
         toss=$((RANDOM%2))
         if [ $toss -eq 0 ]
         then
                coinface+=head
         else
                coinface+=tail
         fi
     done
        echo $coinface
        coin[$coinface]=$((${coin[$coinface]}+1))
        if [ $maximum -lt ${coin[$coinface]} ]
        then
              maximum=${coin[$coinface]}
              echo $maximum
         fi
        Per $coinface
  done
      echo "${!coin[@]}"
      echo "${coin[@]}"
}

function Per()
{
       Per=$((${coin[$coinface]}*100/$No_Of_Toss))
       pertoss[$coinface]=$Per
       echo "key ${!pertoss[@]}"
       echo "pecent ${pertoss[@]}"
}

read -p "enter the no of toss" No_Of_Toss
read -p "enter the no of coins" No_Of_Coins
    if [ $No_Of_Coins -gt 0 ] && [ $No_Of_Coins -lt 4 ]
    then
        res="$( Flip_Coin $(($No_Of_Toss,$No_Of_Coins)) )"
        echo $res
        echo ${coin[@]}
    else
        echo "enter valid coin no"
    fi
