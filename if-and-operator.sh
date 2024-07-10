#!/bin/bash

#os && user == root
operatingsystem=$(uname)
                                                #when both the condition is true then only print the statement
if [[ ${operatingsystem} == "Linux" ]]
then
    if [[ ${UID} -eq 0 ]]                   #in this way we can use nested if as may time 
    then
        echo "user is root user and operating system is linux"
    fi    
fi    
#=============================================================================================#


if [[ ${operatingsystem} == "Linux" && ${UID} -eq 1000 ]]    ###use && operator insted nested if ##this is more convinent
then
    echo "user is root user and operating system is linux"
fi


