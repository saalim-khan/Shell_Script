#!/bin/bash

#check file is dir
#block device
#char device
#if file exist
#read permission
#write permission
#execute permission


file_full_path="/home"

if [[ -d ${file_full_path} ]] #-d is for directory #to check list enter command---->man test
then
    echo "${file_full_path} is a directory"
fi    


file_full_path="/dev/sda"

if [[ -b ${file_full_path} ]] #-b is for block #to check list enter command---->man test
then
    echo "${file_full_path} is a block"
fi    


file_full_path="/dev/rtc"

if [[ -c ${file_full_path} ]] #-c is for character #to check list enter command---->man test
then
    echo "${file_full_path} is a char device"
fi    


file_full_path="/home"

if [[ -e ${file_full_path} ]] #-e is for exist #to check list enter command---->man test
then
    echo "${file_full_path} file exist"
fi    



file_full_path="/home/saalim/Desktop/Shell_Script/documentation/first.txt"

if [[ -r ${file_full_path} ]] #-r is for read #to check list enter command---->man test
then
    echo "${file_full_path} has read permission"
fi    

file_full_path="/home/saalim/Desktop/Shell_Script/documentation/first.txt"

if [[ -w ${file_full_path} ]] #-w is for write #to check list enter command---->man test
then
    echo "${file_full_path} has write permission"
fi    

file_full_path="/home/saalim/Desktop/Shell_Script/documentation/first.txt"

if [[ -x ${file_full_path} ]] #-x is for excute #to check list enter command---->man test
then
    echo "${file_full_path} has execute permission"
fi    