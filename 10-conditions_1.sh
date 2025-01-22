#!/bin/bash

ID=$(id -u) ## -id -u--> we are verifying root user or not and storing it in ID variable.

if [ $ID -ne 0 ]
then 
    echo "You are not an root user"
    exit 1 ## exit 1 command exits the execution of the above statement if condtion is fails.
else
    echo "You are the root user, please proceed installing the packages"
fi

yum install mysql -y

## below are the validation.

if [ $? -ne 0 ]  ## $? is the exit status of the above command and it checks the success or failure and stores it in its storage
then 
    echo "Error :: installing mysql is FAILED"
    exit 1
else 
    echo "installing mysql is SUCCESS"
fi
