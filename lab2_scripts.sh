#!/bin/bash

# Authors: Cathleen Samson
# Date: 1/31/19

echo "File Name: $0"
echo "Command Line Argument 1: $1"

egrep $1 $2

# Problem 1 Code 
egrep '[0-9]{3}-[0-9]{3}-[0-9]{4}' "regex_practice.txt"
# looks for digits 0-9 3 times with a dash '-" in between, 
#searches for 3 more [0-9] (digits) followed by a dash and then followed by 4 digits

# Problem 2 Code 
egrep '\b[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+' "regex_practice.txt"
# looks for '@'' character in file 
# all emails should have @ in it 

# Problem 3 Code 
grep -E '303-[0-9]{3}-[0-9]{4}' "regex_practice.txt" >> "phone_results.txt"
# same logic as reg ex for phone numbers but area code must be 303, cannot be any digits between [0-9] 3 times

#Problem 4 Code 
grep -E '\b[A-Za-z0-9]+@geocities.com' "regex_practice.txt" >> "email_results.txt"
# email from geocities.com must contain that exact string 

# Problem 5 Code 
grep -E $1 "regex_practice.txt" >> "command_results.txt"
# take 1st argument from command line and look for it in regex_practice text 