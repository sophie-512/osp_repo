#!/bin/bash
if [ $# -ne 1 ]; then
  echo "1) add"
  echo "2) sub"
  echo "3) div"
  echo "4) mul"
  read -p "select menu : " parameter
fi

num1=`cat num1.txt`
echo "num1 : " $num1
num2=`cat num2.txt`
echo "num2 : " $num2

case $1 in
  1) let result=`expr $num1 + $num2` 
     echo "op : add"
     ;;
  2) let result=`expr $num1 - $num2`
     echo "op : sub"
     ;;
  3) let result=`expr $num1 / $num2`
     echo "op : div"
     ;;
  4) let result=`expr $num1 \* $num2`
     echo "op : mul"
     ;;
esac
echo "result : " $result
