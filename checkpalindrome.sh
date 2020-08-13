#!/bin/bash 

palindrome () {
num=$1
rev=0
while [ $num != 0 ]; 
do
	rem=$(( $num % 10 ))
	rev=$(( $rev*10 + $rem ))
	num=$(( $num / 10 ))
done
if [ $rev -eq $1 ]; 
then
echo "$1 is a palindrome"
else
echo "$1 is not a palindrome"
fi 
}
palindrome 545

palindrome 21 
