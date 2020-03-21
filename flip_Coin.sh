 #!/bin/bash -x
echo "welcome to flipCoin simulator game"
declare -A  singletDictionary

for (( i=0; i<9; i++ ))
do
toss=$((RANDOM%2))
if [ $toss -eq 0 ]
then
   singletDictionary[head]=$((${singletDictionary[head]}+1))
else
   singletDictionary[tail]=$((${singletDictionary[tail]}+1)) 
fi
done
    echo "${singletDictionary[@]}"
    echo "${!singletDictionary[@]}"

headper=$((${singletDictionary[head]}*100/i))
tailper=$((${singletDictionary[tail]}*100/i))
echo $tailper
echo $headper
