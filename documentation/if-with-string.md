<h1> [ vs [[ in Shellscript and String Comparison
 </h1><br>
<p>

if we want to compare two string that is equal or not then we can use == sign.<br>
<br>
#!/bin/bash<br>
if [ "saalimkhan " == "saalimkhan" ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>


<br>
output will be<br>


└─$ ./if-string.sh<br>
both string are equal<br>
let's remove ** from condition and check the output again<br>
<br>
#!/bin/bash<br>
if [ saalimkhan  == saalimkhan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>
<br>

output will be <br>

└─$ ./if-string.sh<br>
both string are equal<br>



now let's create a variable with name name<br>


#!/bin/bash<br>
name=saalimkhan<br>
if [ name == saalimkhan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>



again we will get the same output<br>


└─$ ./if-string.sh<br>
both string are equal<br>


now let's modify variable value with space<br>

#!/bin/bash<br>
name=Saalim khan<br>
if [ $name == Saalim khan ]<br>
then<br>
  echo "both string are equal"<br>
fi<br>
<br>


now we will get the error in the output.<br>


─$ ./if-string.sh<br>
./test.sh: line 2: khan: command not found<br>
./test.sh: line 3: [: learning: binary operator expected<br>


to solve this error let's put the **.<br>

so now the script will be like the below script.<br>

 #!/bin/bash<br>
name="Saalim khan"<br>
if [ "$name" == "Saalim khan" ]<br>
then<br>
 echo "both string are equal"<br>
fi<br>

now output will be<br>


└─$ ./test.sh<br>
both string are equal<br>

now let's create one more variable and compare them<br>

#!/bin/bash<br>
name="Saalim khan"<br>
othername="Saalim khan"<br>
if [ "${name}" == "${othername}" ]<br>
then<br>
 echo "both string are equal"<br>
fi<br>


again we get the same output.<br>


└─$ ./if-string.sh<br>
both string are equal<br>







</p>