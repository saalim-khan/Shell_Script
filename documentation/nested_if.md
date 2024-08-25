<h1>Nested If-Else<br>
</h1>

<p>
we can define if-else inside if-else.<br>

A nested if-else block can be used when one condition is satisfied then it again checks another condition.<br>

example<br>
<h3>
#!/bin/bash<br>
number=9<br>
if [[ ${number} -gt 10 ]]<br>
then<br>
    if [[ $number -gt 50 ]]<br>
    then<br>
        if [[ ${number} -gt 100 ]]<br>
        then<br>
            echo "number is grater then 100"<br>
        fi<br>
    else<br>
        echo "number is in between 11 to 50"<br>
    fi<br>
else<br>
    echo "number is less then or equal to 10"<br>
fi<br></h3>

└─$ ./nested-if-else.sh<br>
number is less then or equal to 10<br>

</p>