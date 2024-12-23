##   Shell script wont stop if it faces error,
## it is our Responsibility to check and proceed so, in shell script EXIT status is there.

##EXIT Status
##-----------------

## It is showing Previous command success or failure 

## $? --> if it showing 0 it hsa sucess
## $? --> if it is showing anyother or not zero it is failure



#!/bin/bash
ID=$(id -u)  ## No spaces

if [ $ID -ne 0 ] then ;

echo " ERROR::: Please run scipt with root user:::"

exit 1

else

echo " You are in root user:::"

fi

yum install mysql -y

[ $? -ne 0 ] then ;

echo "ERROR ::Installing MYSQL is Failed"

else

echo "MYSQL Installation is Successs"
fi