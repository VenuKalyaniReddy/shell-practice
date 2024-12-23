#/bin/bash
ID=$(ID-u)
VALIDATE() {
    if [ $? -ne 0 ]
    then 
        echo "ERROR: Installing mysql is failed"
        exit 1
    else
        echo "Installing mysql is success"
    fi
}

if [$ID -ne 0]
then 
    echo "ERROR:: Please run this script with root user"
    exit 1
else
    echo "you are root user"
fi