<h1>Print Hello World In Different Color</h1>
<h2>echo Command</h2>
<p>All the parameters to the echo command are printed on the screen. with the help of echo command, we can print the text in a different color.<br>

#!/bin/bash<br>
echo this is saalim<br>
echo 'this is our first                 shellscript'<br>
echo -e "\033[0;31m fail message"<br>
echo -e "\033[0;32m success message"<br>
echo -e "\033[0;33m warning message here"
</p>


<p>now lets run the above script</p>

<p>[~/shellscript-]<br>
└─$ ./echo.sh<br>
this is gaurav sharma<br>
this is our first                 shellscript<br>
fail message here<br>
success message here<br>
warning message here</p>

<p>you will see fail message here in red color, success message here in gree color, warning message here in yellow color.</p>