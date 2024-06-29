#!/bin/bash
#use to set variable name
name="saalim"
readonly name  #-<---- command dont want to update the vaiable name

echo ${name} #use readonly when we don't want to change the variable name 




:'
output:-
saalim@saalim-Lenovo-ideapad-510-15IKB:~/Desktop/Shell_Script$ ./readonly_varible.sh 
saalim
./readonly_varible.sh: line 7: name: readonly variable
saalim
'
#use to unset  command to change it #now the it is change able 
unset 
echo ${name}