#!/bin/bash

num1=$1
num2=$3
op=$2

if [ -z "$num1" ] || [ -z "$num2" ] || [ -z "$op" ]; then
	echo "Program takes 3 input parameters"
else
	if [[ $num1 =~ ^-?[0-9]+$ ]] && [[ $num2 =~ ^-?[0-9]+$ ]]; then
		if (( $num1 >= 1 && $num1 <= 100 && $num2 >= 1 && $num2 <= 100)); then
			if [[ "$op" == "a" ]]; then
				echo $((num1+num2))
			elif [[ "$op" == "s" ]]; then
				echo $((num1-num2))
			elif [[ "$op" == "m" ]]; then
				echo $((num1*num2))
			elif [[ "$op" == "d" ]]; then
				echo $((num1/num2))
			else
				echo "Invalid Operator"
			fi
		else
			echo "Error! Numbers outside range [1-100] are invalid."
		fi
	else
		echo "Error! Alphabets, symbols, and numbers outside range [1-100] are invalid."
	fi
fi