<h1>Shell Script Shebang</h1>


<p>The #! syntax is used in scripts to indicate an interpreter for execution under UNIX / Linux operating systems. <br>The directive must be the first line in the Linux shell script and must start with shebang #!.<br>

The sharp sign (#) and the bang sign (!) thats why called is the shebang. (sharpbang)<br>

Shebang starts with #! characters and the path to the bash or other interpreter of your choice. Make sure the interpreter is the full path to a binary file. For example: /bin/bash.<br></p>

#!/bin/bash
sleep 300

<p>If a script does not contain a shebang the commands are executed using your shell.<br>
you can print SHELL variable to show which shell you are using.<br>
Different shells have slightly varying syntex<br>
you can see all the available shells in /etc/shells file in Linux operating system.<br>
It makes shell scripts more like actual executable files,<br>
because they can be the subject of 'exec'<br>
If you do a 'ps' while such a command is running, the real name appears instead of 'sh' or 'bash'. Likewise, system accounting is done based on the real name.<br>
It will allow other interpreters to fit in more smoothly.<br>


let's run a script with other interpreter. create a file using the below snippts</p>


#!/usr/bin/python
print("Hello this is python script")



<p>now let's change the mode and give the execute permission to file. and execute it.<br></p>

$ chmod +x second.sh

$ ./second.sh
hello world from python program