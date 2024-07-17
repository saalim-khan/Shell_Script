<h1>  Create Local Variable In Shell Script </h1><br>
<p>

All variables are global by default.<br>
Modifying a variable in a function changes it in the whole script. This could lead to issues.<br>
local command can only be used within a function.<br>
It makes the variable name have a visible scope restricted to that function and its children only.<br>
All function variables are local. This is a good programming practice.<br>


example<br>

#!/bin/bash<br>
packageName="nginx"<br>
function install(){<br>
    local myname="Saalim"<br>
    echo "installing ${1}"<br>
}<br>

function configuration(){<br>
    packageName="tomcat"<br>
    echo "config ${1}"<br>
}<br>

echo "first ${packageName}"<br>
echo "myname = ${myname}"<br>
install "${packageName}"<br>
echo "myname = ${myname}"<br>
echo "second ${packageName}"<br>
configuration "${packageName}"<br>
echo "third ${packageName}"<br>
output:<br>

┌──[/shellscript-youtube]<br>
└─$ ./variables-in-functions.sh<br>
first nginx<br>
myname =<br><br>
installing nginx<br>
myname =<br>
second nginx<br>
config nginx<br>
third tomcat<br>


</p>