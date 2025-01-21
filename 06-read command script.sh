#!/bin/bash

echo "Please enter your username:"
read -s USERNAME ## USERNAME is a variable
echo "Please enter your password"
read -s PASSWORD  ## USERNAME is a variable

echo "UserName is : $USERNAME"  ## i am priting the username for validation purpose only
echo "Password is : $PASSWORD"  ## i am priting the username for validation purpose only 

## read -s USERNAME
## read -s PASSWORD 
## Above two commands will store the username and password in respective variables and it will not show to end-user at runtime and same inputs are stored in read command
## -s = it will encript the data and stores in read command.

