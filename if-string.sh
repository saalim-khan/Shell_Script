#!/bin/bash
name="saalim khan"
othername=""

if [[ -n ${name} ]]
then
    echo "length of string in non zero"
fi

if [[ -z ${othername} ]]
then
    echo "length of string is zero"
fi    

if [[ ${name} == ${othername} ]]  #this check both string are equal or not(==)
then   
    echo "both string are equal"   #use [[ double square bracket]] advance version 
fi