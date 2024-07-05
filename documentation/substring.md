<h1>Substring in Shell Script
</h1>

<p>



<h2>Get Substring from a String</h2>
syntax<br>

---->{string:position}<br>
example<br>

#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string:0}"  # output -> abcgauravabcxyz<br>
echo "${string:1}"  # bcgauravabcxyz<br>
echo "${string:4}"  # auravabcxyz<br>


<h2>Get Last n Character from a String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string: -3}" # xyz<br>
<h2>Get Substring With Specific Length From String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string:0:3}"<br>
echo "${string:3:3}"<br>
<h2>Get Shortest Match from Starting in A String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string#a*c}" # from starting, shortest match<br>
<h2>Get Longest Match from Starting in A String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string##a*c}" # from starting, longest match<br>
<h2>Get Shortest Match from the End</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo ${string%b*z} # from ending, shortest match<br>
<h2>Get Longest Match from the End</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string%%b*z}" # from ending, longest match<br>
<h2>Replace First Occurrence of Character in String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string/abc/xyz}"<br>
<h2>Replace All Occurrence of Character in String</h2><br><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string//abc/xyz}"<br>
<h2>Remove First Occurrence of Character in String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string/abc}"<br>
<h2>Remove All Occurrence of Character in String</h2><br>
#!/bin/bash<br>
string="abcgauravabcxyz"<br>
echo "${string//abc}"<br>
let's create a script and execute it.<br>


#!/bin/bash<br>

string="abcsaalimabcxyz"<br>
<br>
echo "${string:0}"<br>
echo "${string:1}"<br>
echo "${string:4}"<br>
echo "${string:0:3}"<br>
echo "${string:3:3}"<br>
echo "${string: -5}"<br>

echo "${string#a*c}"  # from starting, shortest match<br>
echo "${string##a*c}" # from starting, longest match<br>

echo ${string%b*z}  # from ending, shortest match<br>
echo "${string%%b*z}" # from ending, longest match<br>

string="abcsaalimabcxyz"<br>

echo "${string/abc/xyz}"<br>
echo "${string//abc/xyz}"<br>

echo "${string/abc}"<br>
echo "${string//abc}"<br>


┌─[~/shellscript-saalim]<br>
└─$ ./substring.sh<br>
abcsaalimabcxyz<br>
bcsaalimabcxyz<br>
auravabcxyz<br>
abc<br>
gau<br>
bcxyz<br>
saalimabcxyz<br>
xyz<br>
abcsaalim<br>
a<br>
xyzsaalimabcxyz<br>
xyzsaalimxyzxyz<br>
saalimabcxyz<br>
saalimxyz<br>







</p>