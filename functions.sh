#!/bin/bash

###syntax no 1. to define a function 

function install(){
        echo "hi form install function"
        echo "hello form install function"
}

####syntax no 2. to define a function

configration(){
        echo "hi form install config function"
        echo "bye form install config function"
}

install

configration


###syntax no 3 to define a function

function deploy {     #we have to give space after giving function name ##other wise it will throw an error
        echo "hehehe form install deploy function"
}

deploy