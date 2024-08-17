<h1>$@ and $* in ShellScript</h1>
<p>
$@ behaves like $* except that when quoted the arguments are broken up properly if there are spaces in them.

for var in "$@"
do
    echo "$var"
done
Gives this:

$ sh test.sh 1 2 '3 4'
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


└─$ ./commandline-args.sh gaurav saurav amit manish
=========== loop one ========
gaurav saurav amit manish
=========== loop two ========
gaurav
saurav
amit
manish


└─$ ./commandline-args.sh gaurav saurav amit "manish sharma"
=========== loop one ========
gaurav saurav amit manish sharma
=========== loop two ========
gaurav
saurav
amit
manish sharma
</p>