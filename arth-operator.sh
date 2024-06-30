#!/bin/bash

a=5
b=5

echo $((a+b))         #in this way we can perform arthematic operator

echo $((5+5))         

echo $((a-b))  
echo $((a*b))  
echo $((a/b))  
echo $((a%b))  

echo $((2**3)) #2*2*2 

((a++))
echo "${a}"


((a+=3))  #a=a+3

echo "${a}"