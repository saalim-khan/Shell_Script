#!/bin/bash

number=15

if [ $number -eq 5 ]         #use this insted of test
then                         # [expression]
    echo "number is equal "
fi    


if [ $number -lt 10 ]         #-lt =less than 
then                         
    echo "number is less than 5"
fi


if [ $number -gt 3 ]         #-gt =greater than
then                         
    echo "number is greater than 5"
fi




: <<'END_COMMENT'
#list of test expression
       STRING1 = STRING2
              the strings are equal

       STRING1 != STRING2
              the strings are not equal

       INTEGER1 -eq INTEGER2
              INTEGER1 is equal to INTEGER2

       INTEGER1 -ge INTEGER2
              INTEGER1 is greater than or equal to INTEGER2

       INTEGER1 -gt INTEGER2
              INTEGER1 is greater than INTEGER2

       INTEGER1 -le INTEGER2
              INTEGER1 is less than or equal to INTEGER2

       INTEGER1 -lt INTEGER2
              INTEGER1 is less than INTEGER2

       INTEGER1 -ne INTEGER2
              INTEGER1 is not equal to INTEGER2

       FILE1 -ef FILE2
              FILE1 and FILE2 have the same device and inode numbers

       FILE1 -nt FILE2
              FILE1 is newer (modification date) than FILE2

       FILE1 -ot FILE2
              FILE1 is older than FILE2

END_COMMENT