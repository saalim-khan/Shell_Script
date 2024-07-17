<h1> IF With Number </h1><br>

<p>
We can use IF with the test command.<br>

#!/bin/bash<br>
<br>
number=5<br>
<br><br>
if test $number -eq 5<br>
then<br>
  echo "number is euqal to five"<br>
fi<br>


instead of test command, we can use its alias that is [.<br>

.eq use for equals operations.<br>
.lt is used for less than.<br>
.gt is used for greater then<br>
.le is used for less than or equal.<br>
.ge is used for greater than or equal.<br>
.ne is used for not equal.<br>



#!/bin/bash<br>
number=15<br>
# eq is for equal, if number is equal to 5 then the below condition will become true.<br>
if [ $number -eq 5 ]<br>
then<br>
  echo "number is eq 5"<br>
fi<br>
<br>

# lt is for less then, if number is less than 11 then the below condition will become true.<br>
if [ $number -lt 10 ]<br>
then<br>
  echo "number is less than 10"<br>
fi<br>
<br>


# gt is for greater then, if number is greater than 4 then the below condition will become true.<br>
if [ $number -gt 4 ]<br>
then<br>
  echo "number is greater then 4"<br>
fi<br>

<br>
<br>

# ge is for greater then or equal, if number is greater than or equal to 5 then the below condition will become true.<br>
if [ $number -ge 5 ]<br>
then<br>
  echo "number is grater than or equal to 5"<br>
fi<br>

<br>


# le is for less then or equal, if number is less than or equal to 5 then the below condition will become true.<br>
if [ $number -le 5 ]<br>
then<br>
  echo "number is less than or equal to 5"<br>
fi<br>


# ne is for not equal, is number is not euqal to 5 then below condition will become true.<br>
if [ $number -ne 5 ]<br>
then<br>
  echo "number is not equal to five."<br>
fi<br>

</p>