#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ]
    then
        echo "$2.... FAILED"
        exit 1
    else
        echo "$2.... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "you are not the root user, please get the access"
    exit 1
else 
    echo "you have root access, please proceed with your package installings..."
fi

yum install mysql -y

VALIDATE $? "Installing MySQL"

yum install GIT -y

VALIDATE $? "Installing GIT"

