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

for var in $*
do
    echo "$var"
done
And you get this:
$ ./test.sh 1 2 '3 4'
1
2
3
4
#!/bin/bash

echo "=========== loop one ========"
for i in "$*"
do
    echo $i
done

echo "=========== loop two ========"
for i in "$@"
do
    echo $i
done
output:


└─$ ./commandline-args.sh saalim yasir umar mohd==== loop one ========
saalim yasir umar mohd==== loop two ========
saalim
yasir
umar
mohd/commandline-args.sh saalim yasir umar "mohd"
=========== loop one ========
saalim yasir umar mohd=========== loop two ========
saalim
yasir
umar
mohd</p>