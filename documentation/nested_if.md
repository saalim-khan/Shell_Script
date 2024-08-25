<h1>Nested If-Else<br>
</h1>

<p>
we can define if-else inside if-else.<br>

A nested if-else block can be used when one condition is satisfied then it again checks another condition.<br>

example<br>
<h3>
#!/bin/bash
number=9
if [[ ${number} -gt 10 ]]
then
    if [[ $number -gt 50 ]]
    then
        if [[ ${number} -gt 100 ]]
        then
            echo "number is grater then 100"
        fi
    else
        echo "number is in between 11 to 50"
    fi
else
    echo "number is less then or equal to 10"
fi</h3>

└─$ ./nested-if-else.sh<br>
number is less then or equal to 10<br>

</p>