#!bin/bash

echo "Please provide your password: "
read pass
len="${#pass}"

if [ $len -ge 8 ]
then
	echo "$pass" | grep -q [0-9]
	if [ $? -eq 0 ]
	then
		echo "$pass" | grep -q [A-Z]
		if [ $? -eq 0 ]
		then
			echo "$pass" | grep -q [a-z]
			if [ $? -eq 0 ]
			then
				echo "Strong Password"
			else
				echo "Weak Password"
			fi
		else
			echo "Weak Password"
		fi
	else
			echo "Weak Password"
	fi
else
	echo "Weak Password"
fi

