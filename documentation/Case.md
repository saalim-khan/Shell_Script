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

</p>