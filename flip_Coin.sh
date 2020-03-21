#!/bin/bash -x
declare -A  coin
declare -A  pertoss
echo "welcome to flip coin games"
function flip_coin()
{
  for (( i=1; i<=no_of_toss; i++ ))
  do
         coinface=""
     for (( j=1; j<=no_of_coins; j++ ))
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
        per $coinface
  done
      echo "${!coin[@]}"
      echo "${coin[@]}"
}

function per()
{
       per=$((${coin[$coinface]}*100/$no_of_toss))
       pertoss[$coinface]=$per
       echo "key ${!pertoss[@]}"
       echo "pecent ${pertoss[@]}"
}

read -p "enter the no of toss" no_of_toss
read -p "enter the no of coins" no_of_coins
"$( flip_coin $(($no_of_toss,$no_of_coins)) )"
