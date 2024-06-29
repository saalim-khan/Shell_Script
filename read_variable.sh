#!/bin/bash
#to take input from user use read



read -p "plaese enter your name " name
read -p "plaese enter your age " age    #-p use to enter phrase
read -p "plaese enter your password " -s password #use -s to secure

echo "my name is ${name} and my age is ${age},\   
my password is ${password}"                    
