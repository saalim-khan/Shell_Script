<h1>Pass Parameters to a Function</h1>

<p>
We can define a function that will accept parameters while calling the function. These parameters would be represented by $1, $2 and so on.<br>


<h2>Functions can be Recursive.</h2>
A function may return a value in one of four different ways:<br>

Change the state of a variable or variables<br>
Use thereturncommand to end the function, and return the supplied value to the calling section of the shell script<br>
echo output to stdout, which will be caught by the caller just as expr $a + $b is caught<br>
we can get the function name using FUNCNAME variable.<br>
If you execute anexitcommand from inside a function, its effect is not only to terminate execution of the function but also of the shell program that called the function.<br>

If you instead want to just terminate execution of the function, then there is way to come out of a defined function.<br>

Based on the situation you can return any value from your function using thereturncommand whose syntax is as follows −<br>


Here code can be anything you choose here, but obviously, you should choose something that is meaningful or useful in the context of your script as a whole.<br>
<br><br>
Example<br>

#!/bin/bash<br>
<br>
function install(){<br>
  echo "executing ${FUNCNAME} - start"<br>
  echo "installing ${1}"<br>
  echo "executing ${FUNCNAME} - end"<br>
}<br>
function configuration(){<br>
  echo "config ${1}"<br>
  echo "${FUNCNAME}"<br>
}<br>
<br>
function deploy() {<br>
  echo "deploying ${1}"<br>
  echo "${FUNCNAME}"<br>
}<br>
install "nginx"<br>
configuration "nginx"<br>
deploy "webapplication"<br>

<br>


</p>