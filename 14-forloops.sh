#!/bin/bash

ID=$(id -u)
R="\[31m"
G="\[32m"
Y="\[33m" 
N="\[0m" 

TIMESTAMP=$(date +%F-%M-%H-%S)
LogFile="/tmp/$0-$TIMESTAMP.log"

echo -e "$Y Scripting Started Exectuing at: $G $TIMESTAMP $N"

if [ $ID -ne 0 ] 
then
    echo "you do not have ROOT ACCESS"
    exit 1
else
    echo "you are a ROOR USER, Please Install the Packages"
fi

validate(){
    
    if [ $? -ne 0 ]
    then
        echo "$2 is $R FAILED $N"
        exit 1
    echo
        echo "$2 is $G SUCCESS $N"
    fi
}

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        validate $? "installing $package"
    else
        echo -e "$package is already installed... $Y SKIPPING $N"
    fi
done


