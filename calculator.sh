
#!/bin/bash

read -p "please input number a:" a

read -p "please input number b:" b

read -p "please input number operator[+|-|*|/]:" opt


testa=$(echo $a | sed 's/[0-9]//g')
testb=$(echo $b | sed 's/[0-9]//g')


testopt=$(echo $opt | sed 's/[-|+|*|\/]//g')
echo -e $testopt



if [ -n "$testa" -o -n "$testb" -o -n "$testopt" ];then
echo "input content is error"
exit 1

elif [ "$opt" == "+" ];then
   result=$(($a+$b))
elif [ "$opt" == "-" ];then
   result=$(($a-$b))
elif [ "$opt" == "*" ];then
 result=$(($a*$b))
else
  result=$(($a/$b))

fi

echo "a $opt b = $result"

