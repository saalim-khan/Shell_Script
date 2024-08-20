<h1>Continue statement in ShellScript
</h1>

<p>


The continue statement is similar to the break command, except that it causes the current iteration of the loop to exit, rather than the entire loop.<br> This statement is useful when an error has occurred but you want to try to execute the next iteration of the loop.<br>

Syntax<br>

continue<br>

Like with the break statement, an integer argument can be given to the continue command to skip commands from nested loops.<br>

continue n<br>

Here n specifies the nth enclosing loop to continue from.<br>

Example<br>
<h3>
#!/bin/bash<br>
initNumber=1<br>
while [[ ${initNumber} -lt 10 ]]<br>
do<br>
    ((initNumber++))<br>
    if [[ ${initNumber} -eq 5 ]]<br>
    then<br>
        continue<br>
    fi<br>
    echo ${initNumber}<br>
done</h3>

Output<br>

└─$ ./continue-statement.sh<br>
2<br>
3<br>
4<br>
6<br>
7<br>
8<br>
9<br>
10<br>
</p>