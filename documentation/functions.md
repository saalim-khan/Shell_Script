<h1> Functions In Shell Script </h1>


<p>

Shell Functions are used to specify the blocks of commands that may be repeatedly invoked at different stages of execution.<br>

The main advantages of using unix Shell Functions are to reuse the code and to test the code in a modular way.<br>

<h2>The purpose of the function</h2><br>
.Don't repeat yourself.<br>
.Write once, use many times.<br>
.Reduce the script length.<br>
.A single place to edit and troubleshoot.<br>
.Easier to maintain.<br>
.If you are repeating yourself, use a function.<br>
.Reusable code.<br>
.Must define before use.<br>
.Has parameters supports.<br>
.The best practice is to put all the functions on top of the script.<br>


<h2>How to Create Function in Shell Script</h2><br>
In Shell script, we can write functions in a variety of different ways.<br>

# type one.<br>
function function_name(){<br>
    # code goes here<br>
}<br>

# type two<br>
function_name(){<br>
    # code goes here<br>
}<br>
# method three<br>
function function_name {<br>
   # function code here.<br>
}<br>
Simply use the function name as a command to run a function.<br>

# invode the function<br>
function_name<br>

example:<br>

#!/bin/bash<br>

# funtions<br>
function install(){<br>
  #### installations code.<br>
  echo "installationscode1"<br>
}<br>
configuration(){<br>
  # configurations code<br>
  echo "configcode1"<br>
}<br>
<br>
function deploy {<br>
  # deploy code.<br>
  echo "deploy code 1"<br>
}<br>
configuration<br>
install<br>
deploy<br>

let's run the above code and see the output.<br>

┌──[~/shellscript-]<br>
└─$ ./functions.sh<br>
configcode1<br>
installationscode1<br>
deploy code 1<br>
<br>





</p>