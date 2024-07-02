<h1>Convert String in Shell Script</h1><br>


<h2>Convert First Character to Upper Case in Shell Script</h2>
<p>#!/bin/bash<br>
string="my name is Saalim"<br>
echo "${string^}" # My name is Saalim<br>
<h2>Convert a String to Upper Case in Shell Script</h2><br>
#!/bin/bash<br>
string="my name is Saalim"<br>
echo "${string^^}" # MY NAME IS SAALIM<br>


<h2>Convert First Character to Lower Case in Shell Script</h2><br>

#!/bin/bash<br>
string="My name is Saalim"<br>
echo "${string,}" # my name is Saalim<br>


<h2>Convert a String to Lower Case in Shell Script</h2><br>

#!/bin/bash<br>
string="My name is Saalim"<br>
echo "${string,,}" # my name is saalim<br>

<h2>Get the Length of String in Shell Script</h2><br>

#!/bin/bash<br>
string="My name is Saalim"<br>
echo "length of string variable is ${#string}"<br>
<br>
#!/bin/bash<br>
string="my name is Saalim"<br>
echo "${string}"   # my name is Saalim<br>
echo "${string^}"  # My name is Saalim<br>
echo "${string^^}" # MY NAME IS SAALIM<br>
string="My name is Saalim"<br>
echo "${string}"  # My name is Saalim<br>
echo "${string,}" # my name is Saalim<br>
echo "${string,,}" # my name is saalim<br>
echo "length of string variable is ${#string}"<br>
output:<br>

┌──[~/shellscript]<br>
└─$ ./string-variable.sh<br>
my name is Saalim<br>
My name is Saalim<br>
MY NAME IS SAALIM<br>
My name is Saalim<br>
my name is Saalim<br>
my name is saalim<br>
length of string variable is 17<br>

</p>