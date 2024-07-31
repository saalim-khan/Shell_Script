<h1> Case in ShellScript </h1>


<p>
You can use multiple if..elif statements to perform a multiway branch. However, this is not always the best solution, especially when all of the branches depend on the value of a single variable.<br>

Shell supports case...esac statement which handles exactly this situation, and it does so more efficiently than repeated if...elif statements.<br>

The case statement saves going through a whole set of if .. then .. else statements. Its syntax is really quite simple:<br>

Example:<br>

#!/bin/bash<br>
action=${1,,}<br>
# start,stop,restart,reload<br>
case ${action} in<br>
    start)<br>
        echo "going to start"<br>
        echo "actionone two"<br>
        ;;<br>
    stop)<br>
        echo "going to stop"<br>
        ;;<br>
    reload)<br>
        echo "going to reload"<br>
        ;;<br>
    restart)<br>
        echo "going to restart"<br>
        ;;<br>
    *)<br>
        echo "please enter correct command line args."<br>
esac<br>

Let's run the above program with one command line argument.<br>


└─$ ./casestatement.sh START<br>
going to start<br>
actionone two<br>


└─$ ./casestatement.sh start<br>
going to start<br>
actionone two<br>


└─$ ./casestatement.sh stop<br>
going to stop<br>


└─$ ./casestatement.sh sToP<br>
going to stop<br>

<h1>Case Statement with Regex
</h1>
Example<br>

read -p "enter y or n: " ANSWER<br>
case "$ANSWER" in<br>
    [Yy] | [Yy][Ee][Ss])<br>
        echo "you answer yes"<br>
        ;;<br>
    [Nn] | [Nn][Oo])<br>
        echo "you answer no"<br>
        ;;<br>
    *)<br>
        echo "Invalid Answer"<br>
        ;;<br>
        exit<br>
esac<br>




output<br>


└─$ ./casethree.sh<br>
enter y or n: y<br>
you answer yes<br>


└─$ ./casethree.sh<br>
enter y or n: ye<br>
Invalid Answer<br>


└─$ ./casethree.sh<br>
enter y or n: yes<br>
you answer yes<br>


└─$ ./casethree.sh<br>
enter y or n: n<br>
you answer no<br>



Example-2<br>

#!/bin/bash<br>
read -p "enter y or n" answer<br>
case ${answer,,} in<br>
    [y]*)<br>
        echo "you enter Yes"<br>
        ;;<br>
    [n]* )<br>
        echo "you enter no"<br>
        ;;<br>
    *)<br>
        echo "Invalid Anser"<br>
        ;;<br>
esac<br>

└─$ ./casestatement-2.sh<br>
enter y or ny<br>
you enter Yes<br>


└─$ ./casestatement-2.sh<br>
enter y or nyeeeeeee<br>
you enter Yes<br>


</p>