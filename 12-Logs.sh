#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log" 

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "$2... FAILED"
        exit 1
    else 
        echo "$2... SUCCESS"
    fi
    
}

if [ $ID -ne 0 ]
then
    echo "Your are not the root user to run the command, Please get the access..."
    exit 1
else
    echo "Your are the root user YEAH !!!. Start Installing the Packages..."
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL."

yum install git -y &>>$LOGFILE

VALIDATE $? "Installing GIT."



