<h1>Break Statement in Shellscript
</h1>

<p>
The break statement is used to terminate the execution of the entire loop, after completing the execution of all of the lines of code up to the break statement. It then steps down to the code following the end of the loop.<br>

Syntax<br>
The following break statement is used to come out of a loop.<br>

<h3>break</h3><br>

The break command can also be used to exit from a nested loop using this format.<br>
<h3>
break n</h3><br>

Here n specifies the nth enclosing loop to the exit from.<br>


example<br>

#!/bin/bash
initNumber=1
while [[ ${initNumber} -lt 10 ]]
do
    echo ${initNumber}
    if [[ ${initNumber} -eq 5 ]]
    then
      echo "condition is true number is ${initNumber} going to break the loop."
      break;
    fi
    ((initNumber++))
done

</p>