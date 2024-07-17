<h1>    Return Status ($?) and Test Command</h1><br>

<p>
<h3>Exit Status</h3>
Every command returns an **exit status **(sometimes referred to as a *return status *or exit code).<br>
A successful command returns a 0, while an unsuccessful one returns a non-zero value that usually can be interpreted as an error code.<br>
Well-behaved UNIX commands, programs, and utilities return a 0 exit code upon successful completion, though there are some exceptions.<br>
When a script ends with an exit that has no parameter, the exit status of the script is the exit status of the last command executed in the script (previous to the exit).<br>




─$ echo "Saalim-khan"<br>
Saalim-khan<br>


─$ echo "echo: Command Not Found"<br>
echo: Command Not Found<br>


─$ echo $?<br>
0 # getting exit status is zero means last command executed successfully.<br>


─$ asdasd<br>
asdasd: command not found<br>


─$ echo $?<br>
127 # getting exit status as non zero means last command not exexuted successfully.<br>



<br>
<h3>Test Command</h3><br>
A test command is a command that is used to test the validity of a command.<br>
It checks whether the command/expression is true or false.<br>
It is used to check a number, string and file expression<br>
It is used to check the type of file and the permissions related to a file.<br>
Test command returns 0 as a successful exit status if the command/expression is true, and returns 1 if the command/expression is false.<br>
Test is used by virtually every shell script written. <br>
It may not seem that way, because test is not often called directly. test is more frequently called as [. [ is a symbolic link to test, just to make shell programs more readable. It is also normally a shell builtin.<br>
<br>
<br>

└─$ a=5 # assign a value(5) to variable a.<br>


─$ test $a -eq 5 # checking that a = 5 or not<br>


─$ echo $?<br>
0 # in last command our expression is true so its return a successfull status means zero.<br>


─$ test $a -eq 4<br>
<br>
─$ echo $?<br><br>
1<br>


</p>