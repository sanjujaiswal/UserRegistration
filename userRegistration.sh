#!/bin/bash -x
echo "---Welcome To User Registration---"

#Constants declaration
NAMING_PATTERN="^[A-Z][a-z]{3,20}$"

EMAIL_PATTERN1="^[a-zA-Z0-9]{1,}+@{1}$"
EMAIL_PATTERN2="^[a-zA-Z0-9]{1,}+@{1}[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$"
EMAIL_PATTERN3="^[a-zA-Z0-9._a-zA-Z0-9]+@{1}[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$"
EMAIL_PATTERN4="^[a-zA-Z0-9._a-zA-Z0-9]+@{1}[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"

EMAIL_PATTERN="^[a-zA-Z0-9._a-zA-Z0-9]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[A-Za-z]{2,4}$"
MOBILE_PATTERN="^[0-9]{2} [6-9]{1}[0-9]{9}$"
PASSWORD_PATTERN="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)*(.*[0-9].*{1}+)*(.*[!@#$%^&*=+].*{1}+)*[a-zA-Z0-9]{5,}$"

#Variables declaration
firstName=""
lastName=""
emailId=""
mobileNumber=""
password=""

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
	echo "Valid email-Id!!!"
else
	echo "Invalid email-Id!!!"
fi

#Email Id validation
read -p "Enter mobile number : " mobileNumber
if [[ $mobileNumber =~ $MOBILE_PATTERN ]]
then
   echo "Valid mobile number!!!"
else
   echo "Invalid mobile number!!!"
fi

#Password validation and it must be in 8 characters, 1 upper case ,1 numeric.
read -p "Enter password : " password
if [[ $password =~ $PASSWORD_PATTERN ]]
then
	echo "Valid Password!!!"
else
	echo "Invalid Password!!!"
fi
