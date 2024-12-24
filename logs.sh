#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE= /tmp/$0-$TIMESTAMP.log"

VALIDTE() {
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: $2 ...FAILED"
        exit1
    else
        echo "ALL Good $2....SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root acess"
    exit1
else
    echo "ALL Good you are root user"
fi
