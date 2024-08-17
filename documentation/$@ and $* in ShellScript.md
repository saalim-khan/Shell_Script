<h1>$@ and $* in ShellScript</h1>
<p>
$@ behaves like $* except that when quoted the arguments are broken up properly if there are spaces in them.<br>

for var in "$@"<br>
do<br>
    echo "$var"<br>
done<br>

Gives this:
<h3>
$ sh test.sh 1 2 '3 4' <br>
1
2
3
4
Now change "$@" to $*:

for var in $*,<br>
do<br>
    echo "$var"<br>
done<br>
And you get this:<br>

$ ./test.sh 1 2 '3 4' 
1
2
3
4

<h3> #!/bin/bash

echo "=========== loop one ========"

for i in "$*"

do

    echo $i

done
<h3>
echo "=========== loop two ========"<br>
for i in "$@"<br>
do<br>
    echo $i<br>
done</h3>
output:<br>


└─$ ./commandline-args.sh saalim yasir umar mohd==== loop one ========<br>
saalim yasir umar mohd==== loop two ========<br>
saalim<br>
yasir<br>
umar<br>
mohd/commandline-args.sh saalim yasir umar "mohd"<br>
=========== loop one ========<br>
saalim yasir umar mohd=========== loop two ========<br>
saalim<br>
yasir<br>
umar<br>
mohd
</p>