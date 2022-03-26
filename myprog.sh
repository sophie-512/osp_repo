#!/bin/bash
mkdir temp
echo "...create temp directory..."
mv num1.txt temp/num1.txt
mv num2.txt temp/num2.txt
mv cal.sh temp/cal.sh
echo "...copy files to temp directory..."
echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"
read -p "select menu : " parameter
echo "...add selected..."
echo "...run calculater..."

cd temp
./cal.sh $parameter
