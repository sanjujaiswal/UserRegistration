#!/bin/bash -x
echo "---Welcome To User Registration---"

#Constants declaration
NamingPattern="^[A-Z][a-z]{3,20}$"

#Variables declaration
firstName=""

#Taking name as input from user and validate it
read -p "Enter first name : " firstName

if [[ $firstName =~ $NamingPattern ]]
then
	echo "Valid Name"
else
	echo "Invalid name!!! Please enter first letter in capital."
fi
