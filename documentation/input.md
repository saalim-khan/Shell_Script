<h1>Read Input From User In Shell Script</h1><br>



<p>We can simply get user input from the read command in BASH. It provides a lot of options and arguments along with it more flexible usage</p><br>

<h2>Read Basic Value from User</h2>
<br>
<p>
#!/bin/bash<br>
read name<br>
echo "Hello ${name}"<br>

#!/bin/bash<br>
read name<br>
read age<br>
echo "Hello ${name}, and your age is ${age}"<br>

<h2>Read With Prompt Message</h2><br>

#!/bin/bash<br>
read -p "please enter your name " name<br>
read -p "please enter your age " age<br>
echo "Hello ${name}, and your age is ${age}"<br>

<h2>Read Secret Text With Prompt Message</h2><br>

#!/bin/bash<br>
read -p "please enter your password " -s password<br>
echo "your password is ${password}"<br>


let's create a file with below content and execute it.<br>

#!/bin/bash<br>
read -p "please enter your name " name<br>
read -p "please enter your age " age<br>
read -p "please enter your password " -s password<br>
echo "Hello ${name}, and your age is ${age} and your password is ${password}"<br>


output<br><br>

┌──-[~/shellscript]<br>
└─$ ./readvariable.sh<br>
please enter your name Saalim<br>
please enter your age 30<br>
please enter your password<br>
hello Saalim, and your age is 30,  your password is MyPassword@123<br>


</p>