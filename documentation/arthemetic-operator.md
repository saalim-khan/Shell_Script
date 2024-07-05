
<h1>  Arithmetic Operations in Shell Script</h1><br>
<p>We can do arithmetic operations in shell script in a serval way (using let command, using expr command ) but we will recommend using brackets for that.</p><br>
<p>
<h2>Different ways to compute Arithmetic Operations in Bash</h2><br>
1.Using Double Parenthesis<br>
2.Using let command<br>
3.using expr command<br>
<h2>Using Double Parenthesis</h2><br>


<br>
<h3>Addition</h3><br>
Sum=$((20+2))<br>
echo "Sum = ${Sum}" # output will be 22<br>
<h3>Subtraction</h3><br>
sub=$((29-2))<br>
echo "sub = ${sub}" # output will be 27<br>
<h3>Multiplication</h3><br>
mul=$((20*4))<br>
echo "Multiplication = ${mul}"  # output will be 80<br>
<h3>Division</h3><br>
div=$((10/3))<br>
echo "Division = ${div}" # output will be 3<br>
<h3>Modulo</h3><br>
mod=$((10%3))<br>
echo "Modulo = ${mod}"  # output will be one.<br>
<h3>Exponentiation</h3><br>
exp=$((10**2))<br>
echo "Exponent = ${exp}" # output will be 100.<br>
let's create a shell script that will perform some arithmetic operations and some increment and decrement operations.<br><br>

#!/bin/bash<br>
a=5<br>
b=6<br>
echo "$((a+b))"<br>
echo "$((a-b))"<br>
echo "$((a*b))"<br>
echo "$((a/b))" # 5/6<br>
echo "$((a%b))"<br>
echo "$((2**3))" # 2*2*2<br>
((a++)) # a=a+1<br>
echo $a<br>
((a+=3)) # a=a+3<br>
echo $a<br>
output<br>

┌──[~/shellscript]<br>
└─$ ./arth-operator.sh<br>
11<br>
-1<br>
30<br>
0<br>
5<br>
8<br>
6<br>
9<br>


<h2>Using let Command</h2><br>
let command is used to perform arithmetic operations.<br>

#!/bin/bash<br>

x=10<br>
y=3<br>
<br>
let "z = $(( x * y ))"  # multiplication<br>
echo $z<br>
let z=$((x*y))<br>
echo $z<br>

let "z = $(( x / y ))"  # division<br>
echo $z<br>
let z=$((x/y))<br>
echo $z<br>
output<br>
<br>
30<br>
30<br>
3<br>
3<br>

<h2>expr command with backticks</h2>
The arithmetic expansion could be done using backticks and expr.<br>

#!/bin/bash<br>
a=10<br>
b=3<br>

# there must be spaces before/after the operator<br>
sum=`expr $a + $b`<br>
echo $sum<br>

sub=`expr $a - $b`<br>
echo $sub<br>
<br>
mul=`expr $a \* $b`<br>
echo $mul<br>

div=`expr $a / $b`<br>
echo $div<br>
Output:<br>
<br>
13<br>
7<br>
30<br>
3<br>


</p>