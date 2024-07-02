<h1>System Variable in ShellScript</h1>

<p>Created and maintained by Linux bash shell itself. This type of variable (with the exception of auto_resume and histchars) is defined in CAPITAL LETTERS. You can configure aspects of the shell by modifying system variables such as PS1, PATH, LANG, HISTSIZE, and DISPLAY, etc.1<br>

There are several commands available that allow you to list and set environment variables in Linux:<br>

env - The command allows you to run another program in a custom environment without modifying the current one. When used without an argument it will print a list of the current environment variables.<br>

printenv - The command prints all or the specified environment variables.<br>

set - The command sets or unsets shell variables. When used without an argument it will print a list of all variables including environment and shell variables, and shell functions.<br>

unset - The command deletes shell and environment variables.<br>

export - The command sets environment variables<br>
<br>
<br>
Below are some of the most common environment variables:<br>

USER - The current logged in user.<br>
HOME - The home directory of the current user.<br>
EDITOR - The default file editor to be used. This is the editor that will be used when you type edit in your terminal.<br>
SHELL - The path of the current user's shell, such as bash or zsh.<br>
LOGNAME - The name of the current user.<br>
PATH - A list of directories to be searched when executing commands. When you run a command the system will search those directories in this order and use the first found executable.<br>
LANG - The current locales settings.<br>
TERM - The current terminal emulation.<br>


<br>
<br>


#!/bin/bash<br>
# System define variables.<br>
# echo ${SHELL}<br>
echo ${HOME} # will show the home directory of current user<br>
echo ${OSTYPE} # type type of operating system.<br>
echo $PATH # A list of directories to be searched when executing commands.<br>
echo ${$} # process id<br>
echo ${PPID} # parent process id<br>
<br>

echo $PWD # present working directory<br>
echo $HOSTNAME # hostname of machine.<br>
echo $UID # user id<br>
# UID="5000"<br>
echo $UID<br>
sleep 5<br>
echo ${SECONDS}<br>
<br>


now let's run the above shell script and see the output.<br>

-[~/shellscript]<br>
└─$ ./variable.sh<br>
Yasir<br>
my name is Saalim and my age is 20<br>
i am programming<br>
linux-gnu<br>
/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/kali/.dotnet/tools<br>
87788<br>
68426<br>
/home/kali/shellscript<br>
leveno<br>
1000<br>
1000<br>
5<br>








</p>