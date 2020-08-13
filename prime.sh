#!/bin/bash 

read -p "Enter your number- " number
prime () {
   t=$1
   count=0
   for ((i=2; i<=$(( $number/2 )); i++))
   do
      if [ $(( $number%$i )) -eq 0 ]
      then
         count=$(( $count+1 ))
         break
      fi
   done
   if [ $count -eq 0 ]
   then
      echo "prime number"
   else
      echo "not a prime number"
   fi
}
prime $number

palindrome () {
num=$number
rev=0
while [ $num != 0 ];
do
   rem=$(( $num % 10 ))
   rev=$(( $rev*10 + $rem ))
   num=$(( $num / 10 ))
done
if [ $rev -eq $number ];
then
echo $rev
fi
}
palindrome $number
echo "reverse of number is- " $rev

prime $rev
