<h1>And (&&) Operator in ShellScript</h1>
<p>
The second command will only execute if the first command has executed successfully i.e, its exit status is zero. <br>This operator can be used to check if the first command has been successfully executed. This is one of the most used commands in the command line.<br>

Syntax:<br>

command1 && command2<br>

<br>
command2 will execute if command1 has executed successfully.<br>
This operator allows us to check the exit status of command1.<br>
and it returns true only and only if all commands execute successfully.<br>


└─$ ping -c 1 8.8.8.8>/dev/null && echo "Internet working fine."<br>
Internet working fine.<br>


Example:<br>
<br>
#!/bin/bash<br>
# os == linux && user == root<br>
OS_TYPE=$(uname)<br>
if [[ ${OS_TYPE} == "Linux" &&  ${UID} -eq 0 ]]<br>
then<br>
    echo "user is root user and os is linux."<br>
fi<br>
let's execute the above program as a non-root user and see the output<br>


└─$ ./if-and-operator.sh<br>
now let's run the same program as a root user.<br>
└─$ sudo su<br>
[sudo] password for Saalim:<br>


┌──(root💀learning-ocean)-[/home/kali/shellscript-youtube]<br>
└─# ./if-and-operator.sh<br>

user is root user and os is linux.<br>
<br>
</p>