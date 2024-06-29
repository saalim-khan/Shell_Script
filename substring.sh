#!/bin/bash

string="abcsaalimabcxyz"

echo ${string:2} #string slicing 

echo ${string:3:9} #string slicing echo ${string:start:stop} 
echo ${string:3:6} 


echo ${string/abc} #remove occourance of string
echo ${string//abc} #remove all occourance of string 

echo ${string/abc/xyz} #replace occourance of string
echo ${string//abc/xyz} #replace all occourance of string