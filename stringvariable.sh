#!/bin/bash

string="my name is saalim"

echo ${string}
echo ${string^} #use to make first alphabert capital
echo ${string^^} #use to make whole string in capital
string="MY NAME IS SAALIM"
echo ${string,} #use to make first alphabert lowercase
echo ${string,,} #use to make whole string in lowercase
echo ${#string} #use to find lenght of a string