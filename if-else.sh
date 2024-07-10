#!/bin/bash

#if-else in Shell scripting

name=""
othername="saalim khan"

if [[ -n ${name} ]]                            #if the one output is true gives the output #if block is false then print else part
then
    echo "length of string in non zero"
else
    echo "length of string is zero"    
fi
