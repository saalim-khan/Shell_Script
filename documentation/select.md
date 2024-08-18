<h1>Select Loop in ShellScript</h1>
<p>
<h3>The select loop is an infinite loop that only ends when there's a keyboard interrupt or abreak statementis encountered. But that's not what makes it unique or interesting. The select statement allows users to choose from multiple options by default and it will prompt the user for an input. You do not have to write any code to accept user input as the select loop is pre-built to handle it. This loop can be used to make menus within your script while keeping the script looping infinitely. Another benefit of the select loop in shell scripts is that it can be combined with theswitch case statementsto create really interactive menus or script pivots. Let's learn how to make use of this loop and work with it.</h3>

<h4>
#!/bin/bash<br>
PS3="please select os? "<br>
select os in linux windows mac<br>
do<br>
  case ${os} in<br>
    linux)<br>
      echo "you selected linux"<br>
      echo "thanks."<br>
      break<br>
      ;;<br>
    windows)<br>
      echo "you selected windows"<br>
      echo "thanks."<br>
      break<br>
      ;;<br>
    mac)<br>
      echo "you selected mac"<br>
      echo "thanks."<br>
      break<br>
      ;;<br>
    *)<br>
      echo "Invalid"<br>
  esac<br>
done</h4>



output:<br>


└─$ ./select-statement.sh<br>
1) linux<br>
2) windows<br>
3) mac<br>
please select os? 1<br>
you selected linux<br>
thanks.<br>

let's run the same program with some invalid value.<br>


└─$ ./select-statement.sh<br>
1) linux<br>
2) windows<br>
3) mac<br>
please select os? 5<br>
Invalid<br>
please select os? 4<br>
Invalid<br>
please select os? 8<br>
Invalid<br>
please select os? 6<br>
Invalid<br>
please select os? 2<br>
you selected windows<br>
thanks.<br>

</p>