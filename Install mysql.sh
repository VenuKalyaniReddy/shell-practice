#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo " ERROR:::: Please run with Root USER"

else
    echo "You are root user"
fi

yum install mysql -y

