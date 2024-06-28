#!/bin/bash
#user  define variable

name="saalim"
age="25"
echo "my name is ${name} my age is ${age}"

work="program"
var="ing"
echo "i love ${work}${var}"

#system design varible

echo ${SHELL}
echo ${HOME}
echo ${OSTYPE}
echo ${PATH}

echo ${$} #to print process id

echo ${PPID} #to print parent process id

echo ${PWD}
echo ${HOSTNAME}
echo ${UID} #to print user id

sleep 10

echo ${SECONDS}  #USE TO PRINT HOW MUCH TIME TAKE TO RUN SHELL SCRIPT