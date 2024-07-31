<h1> Elif in ShellScript
 </h1>

 <p>
<h2>if..elif..else..fi statement (Else If ladder)</h2><br>
To use multiple conditions in one if-else block, then elif keyword is used in shell. <br>If the expression1 is true then it executes statements 1 and 2, and this process continues.<br> If none of the conditions is true then it processes else part.<br>

Syntax<br>

if [ expression1 ]<br>
then<br>
   statement1<br>
   statement2<br>
   .<br>
   .<br>
elif [ expression2 ]<br>
then<br>
   statement3<br>
   statement4<br>
   .<br>
   .<br>
else<br>
   statement5<br>
fi<br>

Example:<br>

#!/bin/bash<br>
number=4<br>

if [[ ${number} -eq 10 ]]<br>
then<br>
  echo "number is 10"<br>
elif [[ ${number} -lt 10 ]]<br>
then<br>
  echo "number is less then 10"<br>
elif [[ ${number} -lt 5 ]]<br>
then<br>
  echo "number is less then 5"<br>
else<br>
  echo "number is grater then 10"<br>
fi<br>


Output<br>

<br>
└─$ ./elif.sh<br>
number is less then 10<br>




 </p>