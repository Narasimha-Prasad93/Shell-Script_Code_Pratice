#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP"

echo "Script Starting executing from: $TIMESTAMP" &>>$LOGFILE 

VALIDATE(){

    if [ $1 -ne 0 ]
    
    then
        echo -e "$2 ...$R FAILED $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"

    fi
    
}


if [ $ID -ne 0 ]
then
    echo -e "Your are not the $R ROOT USER $N"
    exit 1
else
    echo -e "Your are the $G ROOT USER $N"
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>>$LOGFILE

VALIDATE $? "Installing GIT"
