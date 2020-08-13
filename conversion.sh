#!/bin/bash 


read -p "Enter your unit- " unit

num=$(echo | awk '{print 5/9}')
conversion () {
number=$1
num1=$(( $number-32 ))
case $unit in
			"CTF")
				value=$(echo | awk '{ print '$num1*$num' }') ;;
			"FTC")
				value=$(echo | awk '{ print '$number*9/5+32'}') ;;
				 *)
				echo "Invalid units"
esac
}


conversion 15
echo $value
