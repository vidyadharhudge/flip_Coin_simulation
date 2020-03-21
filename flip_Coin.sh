 #!/bin/bash -x
echo "welcome to flipCoin simulator game"
toss=$((RANDOM%2))
if [ $toss -eq 0 ]
then
    echo  head
else
    echo tail
fi
