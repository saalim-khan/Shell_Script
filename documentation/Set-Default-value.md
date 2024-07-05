<h1> Set Default Value to Shell Script Variable</h1>

<p>


<h2>If parameter is unset or null Set Default Value</h2><br>
{parameter:-word}<br>
If parameter is unset or null, the expansion of word is substituted. Otherwise, the value of parameter is substituted.<br>

<h2>If parameter is unset then Set Default Value</h2><br>
{parameter-word}<br>
If parameter is unset, the expansion of word is substituted. Otherwise, the value of parameter is substituted.<br>

let's create a script and execute it for practice purpose.<br>

#!/bin/bash<br>

read -p " please enter your name " name<br>

name=${name:-World}<br>
<br>
echo "Hello ${name^}"<br>

yourname=${unsetvariable-Yasir}<br>
echo $yourname<br>

myname=""<br>
mytestname=${myname:-ubuntu}<br>
echo ${mytestname}<br>
output:
<br>
┌──[~/shellscript]<br>
└─$ ./defaultvalue.sh<br>
 please enter your name Saalim<br>
Hello Saalim<br>
Yasir<br>
Ubuntu<br>
Check A Variable is set or not using below script<br>
<br>
#!/bin/bash<br>
# name="saalim"<br>
: ${1:?" please set variable values. "}<br>
echo "i am here."<br>
output:<br>

┌──[~/shellscript]<br>
└─$ ./if-variable-not-set.sh Saalim<br>
i am here.<br>
<br>
┌──[~/shellscript]<br>
└─$ ./if-variable-not-set.sh<br>
./if-variable-not-set.sh: line 4: 1:  please set variable values.<br>
<br>
<br>


</p>