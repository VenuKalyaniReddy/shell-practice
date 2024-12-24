###special arguments
## > =Redirection
## >> =Append
## 1 =success
## 2 =Failure
## & =Both sucess and Failure

#Special Arguments
# $? = exit status of previous command
# $0 = you will get script name
# $1 = 1st argument
# $2 = 2nd argument
# $@ = for all argument
# $# = Total no.of arguments


#! /bin/bash
 NUMBER1=$1
 NUMBNER2=$2
 SUM=$(($NUMBER1+$NUMBER2))
 echo "Total:: $SUM"
 echo "How many args passed:: $#"
 echo "All args passed:: $@"
 echo "Script name:: $0"


