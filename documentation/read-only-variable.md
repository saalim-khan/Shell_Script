<h1>How to create a read-only variable in Shell Script</h1><br>
<p>We can create read-only variable in shell script using readonly.<br>

syntax:<br>

readonly VARIABLE_NAME       <br>          
let's take below example.<br>

 #!/bin/bash  <br>
name="hinal"<br>
# readonly name<br>
echo "${name}"<br>
unset name<br>
# name="gaurav"<br>
echo "${name}"<br>
</p><br>