<h1> Not Operator in ShellScript </h1>

<p>

The NOT logical operator reverses the true/false outcome of the expression that immediately follows.<br>

For example, if a file does not exist, then display an error on the screen.<br>

#!/bin/bash<br>
name="saalim khan"<br>
othername="saalim khan"<br>
if [[ ! ${othername} == ${name} ]]<br>
then<br>
    echo "both are same"<br>
fi<br>



now let's run the above the program<br>
└─$ ./if-not.sh<br>
both are same<br>




</p>