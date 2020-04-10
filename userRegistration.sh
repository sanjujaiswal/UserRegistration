#!/bin/bash
echo "---Welcome To User Registration---"

#Constants declaration
NAMING_PATTERN="^[A-Z][a-z]{3,20}$"
EMAIL_PATTERN="^[a-zA-Z0-9._a-zA-Z0-9]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"

#Variables declaration
firstName=""
lastName=""
emailId=""

#Taking Fist name as input from user and validate it
read -p "Enter First Name : " firstName

if [[ $firstName =~ $NAMING_PATTERN ]]
then
	echo "Your First Name is Valid"
else
	echo "Your First Name is Invalid!!! Please enter first letter in capital."
fi

#Last name validation
read -p "Enter Last Name : " lastName

if [[ $lastName =~ $NAMING_PATTERN ]]
then
	echo "Your Last Name is Valid "
else
	echo "Your Last Name is Invalid!!!"
fi

#Email Id validation
read -p "Enter email : " emailId
if [[ $emailId =~ $EMAILPATTERN ]]
then
	echo "Valid email-Id"
else
	echo "Invalid email-Id"
fi
