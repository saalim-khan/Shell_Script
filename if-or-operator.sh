#!/bin/bash

#OR operator is written with this || <---------- 
operatingsystem=$(uname)

if [[ ${operatingsystem} || "Linux" && ${UID} -eq 1000 ]]    ###OR operator #when any one condition is true it and give output
then
    echo "user is root user and operating system is linux"
fi
