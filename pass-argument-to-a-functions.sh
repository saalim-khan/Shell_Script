#!/bin/bash


function install(){
        echo "calling function name ${FUNCNAME}"  #here ${0} won't work ####therefore we use system define variable to 
        echo "install ${1}"  #<--- pass arguments in a function                         #####call function by its name by using ${FUNCNAME}
}

function configration(){
        echo "configure ${1} ${2}" #pass multiple arguments
}

function deploy(){
        echo "deploy ${1}"
}

install "nginx" 
configration "nginx" "tomcat"
deploy "web server"