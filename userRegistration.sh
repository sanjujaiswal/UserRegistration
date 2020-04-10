#!/bin/bash -x
echo "---Welcome To User Registration---"

#Constants declaration
NamingPattern="^[A-Z][a-z]{3,20}$"

#Variables declaration
firstName=""

#Taking Fist name as input from user and validate it
read -p "Enter First Name : " firstName

if [[ $firstName =~ $NamingPattern ]]
then
	echo "Your First Name is Valid"
else
	echo "Your First Name is Invalid!!! Please enter first letter in capital."
fi

#Last name validation
read -p "Enter Last Name : " lastName

if [[ $lastName =~ $NamingPattern ]]
then
	echo "Your Last Name is Valid "
else
	echo "Your Last Name is Invalid!!!"
fi
