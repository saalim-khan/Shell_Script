#!/bin/bash

#name="saalim"                             #if variable value is not set then it will return Please set variable value

#: ${name:?"please set vatiable values. "}  #check weather user has pass command line argument 


: ${1:?"please set vatiable values. "}  #also use in this way 



echo "i am here."