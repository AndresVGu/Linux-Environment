#!/usr/bin/bash

#Author: Andres Villarreal (a.k.a haruhko)

#Colors:
greenColor="\e[0;32m\033[1m"
endColor="\033[0m\e[0m"
redColor="\e[0;31m\033[1m"
blueColor="\e[0;34m\033[1m"
yellowColor="\e[0;33m\033[1m"
purpleColor="\e[0;35m\033[1m"
turquoiseColor="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Global Variables:


#Exit Process:
trap ctrl_c INT

function ctrl_c(){
    echo -e "\n\n${redColor}[!] Ending Process...\n${endColor}"
    exit 1
}