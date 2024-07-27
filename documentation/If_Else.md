<h1>If-Else in ShellScript</h1>

<p>
If the specified condition is not true in the if part then the else part will be executed.<br>

Syntax:<br>

if [ expression ]<br>
then<br>
   statement1<br>
else<br>
   statement2<br>
fi<br>

Example:<br>

#!/bin/bash<br>
name=""<br>
othername="saalim khan"<br>

if [[ -n ${name} ]]<br>
then<br>
    echo "length of string is non zero"<br>
else<br>
    echo "length of string is zero"<br>
fi<br>

if [[ -z ${name} ]]<br>
then<br>
    echo "length of string is zero -two"<br>
else<br>
    echo "length of string is non zero. = two"<br>
fi<br>

if [[ ${name} == ${othername} ]]<br>
then<br>
    echo "both string are equals - three"<br>
else<br>
    echo "both string are not equals. - three"<br>
fi<br>

if [[ ${name} != ${othername} ]]<br>
then<br>
    echo "both string are not equals -four"<br>
else<br>
    echo "both strings are equals -four"<br>
fi<br>

echo "I am Here"<br>


</p>