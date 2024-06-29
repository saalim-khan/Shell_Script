<h1> Shell Built-in and Commands</h1>
<h2>Shell Built-in</h2>
<p> Shell Built-in does not request another program to run a process because it is a shell built-in. so use shell built-in if it is available.<br>

A built-in command is simply a command that the shell carries out itself, instead of interpreting it as a request to load and run some other program. This has two main effects. First, it's usually faster, because loading and running a program takes time. Of course, the longer the command takes to run, the less significant the load time is compared to the overall run time (because the load time is fairly constant).

</p>

<h2>Keywords</h2>
<p> Keywords are the words whose meaning has already been explained to the shell. the keywords cannot be used as variable names because it is a reserved word containing reserved meanings.</p>

<h2>Sequence</h2>

<p> when you run a command bash will search a function with the same name if the function with the same name is not present then bash will search it in builtins. if builtin is also not available then it will search the command at PATH locations.</p>



<p> $ uptime <br>
 01:37:53 up 2 min,  2 users,  load average: 0.60, 0.59, 0.26</p>

<p>$ type -a uptime<br>
uptime is /usr/bin/uptime<br>
uptime is /bin/uptime</p>


<p>$ type -a echo<br>
echo is a shell builtin<br>
echo is /usr/bin/echo<br>
echo is /bin/echo</p>

<p>$ type -a if<br>
if is a reserved word</p>