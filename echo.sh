#!/bin/bash
echo message with without inverted comma
echo "message with with inverted          comma"


echo -e "\033[0;31m fail message here (print message in red)"
echo -e "\033[0;32m success Message Here (print message in green)"
echo -e "\033[0;33m WARNING Message Here (print message in yellow)"
echo -e "\033[0;34m dont know where to use (print message in blue)"

#This is single line comment

: '
this is comment is 
multi line comment

'
: <<'END-COMMENT'
HELLO
HII (this is also multi line comment)
BYEE
END-COMMENT

