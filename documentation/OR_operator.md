<h1>  OR ( || ) Operator in ShellScript</h1>

<p>
This is logical OR. If one of the operands is true, then the condition becomes true.<br>

Syntax:<br>

command1 && command2<br>


command2 will execute if command1 has failed.<br>

and it returns false only and only if all commands return not zero exit code.<br>

─$ ping -c 1 8.8.8.8>/dev/null || echo "Internet is not working."<br>
Internet is not working.<br>
Example:<br>
<br><br>
#!/bin/bash<br>
# os == linux && user == root<br>
OS_TYPE=$(uname)<br>
if [[ ${OS_TYPE} == "Linux" || ${UID} -eq 0 ]]<br>
then<br>
  echo "user is root user or os is linux."<br>
fi
<br>

et's execute the above program as a non-root user and see the output<br>


└─$ ./if-or-operator.sh<br>
user is root user or os is linux.        <br>                                                        1
now let's run the same program as a root user.<br>


└─$ sudo su        <br>                                                               1 ⨯
[sudo] password for saalim:<br>
┌──(root💀Saalim-ubuntu)-[/home/kali/shellscript-]<br>
└─# ./if-or-operator.sh<br>
user is root user or os is linux.<br>

Example 2:<br>

#!/bin/bash<br>
read -p "do you want to continue (Y/y/yes) " uservalue<br>
if [[ ${uservalue,,} == 'y' || ${uservalue,,} == 'yes' ]]<br>
then<br>
  echo "you want it"<br>
else<br>
  echo "you dont want it."<br>
fi<br>
executing the above script four-time and supply different outputs and check the output in the below section.<br>





</p>