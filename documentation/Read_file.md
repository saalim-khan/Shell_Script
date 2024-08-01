<h1>  Read File in ShellScript</h1>
<p> we can read a file with the help of read and while. <br>The return code of read command is zero, unless the end-of-file is encountered.<br>


#!/bin/bash<br>
file_path="/etc/passwd"<br>
while read line<br>
do<br>
    echo "$line"<br>
    sleep 0.20<br>
done < $file_path<br>
<br>
</p>