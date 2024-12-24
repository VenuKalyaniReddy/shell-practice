#!/bin/bash
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
#LOGFILE="/tmp/$(basename $0)-$TIMESTAMP.log"


VALIDTE() {
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: $2 ...FAILED" "$LOGFILE"
        exit 1
    else
        echo "ALL Good $2....SUCCESS" "$LOGFILE"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root acess" "$LOGFILE"
    exit 1
else
    echo "ALL Good you are root user" "$LOGFILE"
fi
