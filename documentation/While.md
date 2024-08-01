<h1> While Loop in ShellScript</h1>


<p>

A while loop is a statement that iterates over a block of code till the condition specified is evaluated to true.<br> We can use this statement or loop in our program when do not know how many times the condition is going to evaluate to false before evaluating to true.<br>

This repeats until the condition becomes false.<br>


syntax:<br>

while [[ condition ]]<br>
do<br>
    # statements<br>
    # commands<br>
done<br>
<br>
while [ condition ]<br>
do<br>
    # statements<br>
    # commands<br>
done<br>


Example-1<br>

#!/bin/bash<br>
while [[ $answer != "yes" ]]<br>
do<br>
    read -p "please enter yes " answer<br>
done<br>


Example-2<br>
,<br>
#!/bin/bash<br>
# example of infinite loop<br>
while true<br>
do<br>
    echo "this is test"<br>
done<br>


output<br>

this is test<br>
this is test<br>
...<br>
...<br>

Example-3<br>

#!/bin/bash<br>
read -p "please enter a number " number<br>
initNumber=1<br>
while [[ ${initNumber} -le 10 ]]<br>
do<br>
    echo $((initNumber*number))<br>
    ((initNumber++))<br>
done<br>




</p>