#!/bin/bash

pakagename="nginx"

function install(){
        echo "prepairing to install  ${1}"
}

function deploy(){
        local pakagename="tomcat"   ####if you want that your variable cannot be accessible from out side use local keyword to make it private
        echo "prepraing to deploy ${1}"

}
echo "${pakagename}"
install "${pakagename}"
deploy "second ${pakagename}"
echo "calling variable form deploy function ${pakagename}"   #here it will call public variable which is declare out side of a function