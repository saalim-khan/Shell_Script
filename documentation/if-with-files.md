<h1>If with Files</h1>
<p>
Suppose we want to check that file is a regular file or directory, the file have read, write or execute permission then<br> again we have use test command or ([[ or [) with if condition.<br>

here is an example.<br>


#!/bin/bash<br>
file_full_path="/home/kali/abc.txt"<br>

# check file is a directory.<br>
if [[ -d $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} is a dir"<br>
fi<br>

# -b means file is block device.<br>
if [[ -b $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} is a block device"<br>
fi<br>
<br>
#check, file is a char device.<br>
if [[ -c $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} is a char device"<br>
fi<br>
<br>
#check, file exists.<br>
if [[ -e $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} is a exist device"<br>
fi<br>

#check, file have read permission.<br>
if [[ -r $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} have read permission"<br>
fi<br>

# check, file have write permission<br>
if [[ -w $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} have write permission"<br>
fi<br>
# check file have execute permission.<br>
if [[ -x $file_full_path ]]<br>
then<br>
   echo  "${file_full_path} have execute permission"<br>
fi<br>
<br>
</p>