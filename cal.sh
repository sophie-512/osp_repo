#!/bin/bash

if [ $# -ne 1 ]; then
	echo "...none operator parameter...."
<<<<<<< HEAD
  	PS3='select menu : '
=======
  PS3='select menu : '
>>>>>>> cf9bc389fb0143ed5e0a2c1c60cb4e7ab9b60af9
	select parameter in "add" "sub" "div" "mul"
	do
  	 break  
	done
else parameter="$1"
fi

echo
num1=`cat num1.txt`
echo "num1 : " $num1
num2=`cat num2.txt`
echo "num2 : " $num2
echo "op : " $parameter

case $parameter in
  "add") let result=`expr $num1 + $num2` 
     ;;
  "sub") let result=`expr $num1 - $num2`
     ;;
  "div") let result=`expr $num1 / $num2`
     ;;
  "mul") let result=`expr $num1 \* $num2`
     ;;
esac
echo "result : " $result
