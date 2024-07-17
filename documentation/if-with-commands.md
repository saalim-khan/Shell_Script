<h1>If With Command</h1>

<p>
This block will process if the exit status of COMMAND is zero(or a command executed successfully).<br>

if COMMAND<br>
then<br>
# if Block<br>
# Your code here.<br>
fi<br>

Example: let's create a file with the name if-condition.sh with the below content.<br>


#!/bin/bash<br>
if grep -i localhost /etc/hosts>/dev/null<br>
then<br>
  echo "Grep Command Executed successfully"<br>
fi<br>
echo "I am Here"<br>


let's execute that file and see the output.<br>


─$ ./if-condition.sh<br>
Grep Command Executed successfully<br><br>
I am Here<br>


Now let's do some changes in the if-condition.sh file and try to search for another word that is not present in the /etc/hosts file.<br>

<br>

#!/bin/bash<br>
if grep -i saalimvyt /etc/hosts>/dev/null<br>
then<br>
  echo "Grep Command Executed successfully"<br>
fi<br>
echo "I am Here"<br>
<br>

now let's check the output<br>
<br>
─$ ./if-condition.sh<br>
I am Here<br>
<br>
Now you can see that our if block does not execute because the grep command does not return a zero status.<br>





</p>