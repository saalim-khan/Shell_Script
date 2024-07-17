<h1> [ vs [[ in Shellscript and String Comparison
 </h1><br>
<p>

if we want to compare two string that is equal or not then we can use == sign.<br>
<br>
#!/bin/bash<br>
if [ "saalimkhan " == "saalimkhan" ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>


<br>
output will be<br>


└─$ ./if-string.sh<br>
both string are equal<br>
let's remove ** from condition and check the output again<br>
<br>
#!/bin/bash<br>
if [ saalimkhan  == saalimkhan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>
<br>

output will be <br>

└─$ ./if-string.sh<br>
both string are equal<br>



now let's create a variable with name name<br>


#!/bin/bash<br>
name=saalimkhan<br>
if [ name == saalimkhan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>



again we will get the same output<br>


└─$ ./if-string.sh<br>
both string are equal<br>


now let's modify variable value with space<br>

#!/bin/bash<br>
name=Saalim khan<br>
if [ $name == Saalim khan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>
<br>


now we will get the error in the output.<br>


─$ ./if-string.sh<br>
./test.sh: line 2: khan: command not found<br>
./test.sh: line 3: [: learning: binary operator expected<br>


to solve this error let's put the **.<br>

so now the script will be like the below script.<br>

 #!/bin/bash<br>
name="Saalim khan"<br>
if [ "$name" == "Saalim khan" ]<br>
then<br>
 echo "both string are equal"<br>
fi<br>

now output will be<br>


└─$ ./test.sh<br>
both string are equal<br>

now let's create one more variable and compare them<br>

#!/bin/bash<br>
name="Saalim khan"<br>
othername="Saalim khan"<br>
if [ "${name}" == "${othername}" ]<br>
then<br>
 echo "both string are equal"<br>
fi<br>


again we get the same output.<br>


└─$ ./if-string.sh<br>
both string are equal<br>

now let's remove the " form if the condition<br>

#!/bin/bash<br>
name="Saalim khan"<br>
othername="Saalim khan"<br>
if [ ${name} == ${othername} ]<br>
then<br>
 echo "both string are equal"<br>
fi<br>

output will be<br>

└─$ ./if-string.sh<br>
./test.sh: line 4: [: too many arguments<br>


now let's add [[ in if condition and check the output.<br>

#!/bin/bash<br>
name="Saalim khan"<br>
othername="Saalim khan"<br>
if [[ ${name} == ${othername} ]]<br>
then<br>
 echo "both string are equal"<br>
fi<br>
output will be<br>


└─$ ./if-string.sh,<br>
both string are equal<br>

so here we get our desired output. and [[ is the advance version of [.<br>

<h2>Difference between [ and [[</h2>

.[ is the same as thetestbuiltin and works like thetestbinary (man test)<br>
.works about the same as[in all the other sh-based shells in many UNIX-like environments<br>
.only supports a single condition. Multiple tests with the bash && and || operators must be in separate brackets.<br>
.doesn't natively support a 'not' operator.<br>
.To invert a condition, use a!outside the first bracket to use the shell's facility for inverting command return values.<br>
== and != are literal string comparisons<br>
.is bash-specific, though other shells may have implemented similar constructs. Don't expect it in an old-school UNIX sh.<br>
.== and != apply bash pattern matching rules, see "Pattern Matching" inman bash<br>
.has a=~ regex match operator<br>
.allows the use of parentheses and the !, &&, and || logical operators within the brackets to combine subexpressions<br>


<h2>String Operation in ShellScript</h2>
let's see the below script and read the comments in shell script for explanation.<br>


#!/bin/bash<br>
name="saalim khan"<br>
othername="yasir khan"<br>

# -n mean string length is non zero so below condition will become true.<br>
if [[ -n ${name} ]]<br>
then<br>
  echo "length of string is non zero"<br>
fi<br>

# -z mean string length is zero, so below condition is false.<br>
then<br>
  echo "length of string is zero"<br>
fi<br>

# check two string are equals using ==<br>
if [[ ${name} == ${othername} ]]<br>
then<br>
  echo "both string are equals"<br>
fi<br>

# check two string are not equals.<br>
if [[ ${name} != ${othername} ]]<br>
then<br><br>
  echo "both string are not equals"<br>
fi<br>


</p>