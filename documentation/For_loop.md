<h1>For Loop</h1>
<p>
The for loop moves through a specified list of values until the list is exhausted.<br>

Keywords are for, in, do, done<br>
List is a list of variables which are separated by spaces.<br> If list is not mentioned in the for statement, then it takes the positional parameter value that were passed into the shell.<br>
Varname is any variable assumed by the user.<br>
<h3>
#!/bin/bash<br>

for variableName in item1 item2 item3 item4 item5 item6<br>
do<br>
 echo "${variableName}"<br>
done</h3>
output:<br>

item1<br>
item2<br>
item3<br>
item4<br>
item5<br>
item6<br>
we can use range in for loop.<br>

#!/bin/bash

read -p "please enter a number " number
for variableName in {1..10}
do
  echo $((variableName*number))
done
output:

please enter a number 2
2
4
6
8
10
12
14
16
18
20
#!/bin/bash
for variableName in "gaurav Sharma" "ankit Joshi" "rajkumar meena"
do
 echo "${variableName}"
done
output:

gaurav sharma
ankit Joshi
rajkumar meena
#!/bin/bash
for i in *
do
  echo $i
done
output: will print all the files and folder name of present present working directory.

#!/bin/bash
for i in $(ls *.txt)
do
  echo "$i"
done
output: it will print all the file name with txt extension
</p>