<h1>User Define Variables</h1>

<p>A variable is a character string to which we assign a value.<br>
A variable is nothing more than a pointer to the actual data. The shell enables you to create, assign, and delete variables.</p>

<h2>Rules:</h2>

<p>The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).<br>
Variable names cannot be reserved words<br>
Variable names cannot have whitespace in between<br>
The variable name cannot have special characters.<br>
The first character of the variable name cannot be a number.<br>
By convention, Unix shell variables will have their names in UPPERCASE.<br>
The following examples are valid variable names<br>

_VARIABLE_NAME<br>
VARIABLE_NAME<br>
VARIABLE_1_NAME<br>
vARIABLE_2_NAME<br>


Following are the examples of invalid variable names<br>

2_VARNAME<br>
-VARIABLENAME<br>
VARIABLENAME-SOMENAME<br>
SOMENAME_A!<br>

The reason you cannot use other characters such as !, *, or - is that these characters have a special meaning for the shell.

</p>



<h2>Defining Variables</h2>

<p>
Variables are defined as follows −<br>

variable_name=variable_value<br>
For example −<br>

MY_MESSAGE="Hello World"<br>
Note that there must be no spaces around the = sign: VAR=value works; VAR = value doesn't work. In the first case, the shell sees the = symbol and treats the command as a variable assignment. In the second case, the shell assumes that VAR must be the name of a command and tries to execute it.<br>

#!/bin/bash<br>
# variable.sh.<br>
# user Define Variables.<br>
name="Saalim"<br>
age="20"<br>
echo ${name}<br>
echo "my name is ${name} and my age is ${age}"<br>
# echo 'my name is ${name} and my age is ${age}'<br>
work="programm"<br>
var="ing"<br>
echo "i am $working"<br>
echo "i am ${work}ing"<br>
echo "i am ${work}${var}"<br>
let's see the output of above shellscript<br>
<br>
[~/┌──(shellscript]<br>
└─$ ./variable.sh<br>
Saalim<br>
my name is Saalim and my age is 20<br>
i am<br>
i am programming<br>
i am programming<br>
#!/bin/bash<br>
# variable_name.sh<br>
_variableName="first variable"<br>
variable2Name="second variable"<br>
<br>
name="saalim"<br>
NAME="yasir"<br>
nAmE="basit"<br>
<br>
echo "${name} ${NAME} ${nAmE}"<br>
echo "${_variableName}"<br>
<br>
echo "${variable2Name}"<br>
variable_name="vartest"<br>
echo "${variable_name}"<br>
<br>
# 3namevariable="myname"<br>
# echo "${3namevariable}"<br>
<br>
my-name="saalim"<br>
echo "${my-name}"<br>
<br>
<br>
let's run the above program<br>
<br>
┌[~/shellscript-]<br>
└─$ ./variable_name.sh<br>
saalim yasir basit<br>
first variable<br>
second variable<br>
vartest<br>
./variable_name.sh: 22: my-name=saalim: not found
name<br>

</p>