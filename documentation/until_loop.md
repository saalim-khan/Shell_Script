<h1>Until Loop</h1>
<p>The Until loop is used to iterate over a block of commands until the required condition is false.<br>

<h3>Syntax:<br><h3>

until [ condition ];<br>
do<br>
 block-of-statements<br>
done<br>




Here, the flow of the above syntax will be --

Checks the condition.
if the condition is false, then executes the statements and goes back to step 1.
If the condition is true, then the program control moves to the next command in the script.
Example

#!/bin/bash
read -p "please enter a number" number
initNumber=1

until [[ initNumber -eq 11 ]]
do
    echo $((initNumber*number))
    ((initNumber++))
done
output

┌──(gaurav㉿learning-ocean)-[~/shellscript-youtube]
└─$ ./until-loop.sh
please enter a number3
3
6
9
12
15
18
21
24
27
30

</p>