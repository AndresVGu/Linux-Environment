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
dir=$(pwd)
fdir="$HOME/.local/share/fonts"
user=$(whoami)

#Exit Process:
trap ctrl_c INT

function ctrl_c(){
    echo -e "\n\n${redColor}[!] Ending Process...\n${endColor}"
    exit 1
}

function banner(){

}

if [ "$user" == "root" ]; then
    banner
    echo -e "\n\n${redColor}[!] You should not run this script as root...${endColor}"
    exit 1
else
    banner
    sleep 1
    echo -e "\n\n${greenColor}[+] Installing necessary packages...\n${endColor}"
    sleep 2
    #First Installation 
    sudo apt install -y kitty rofi feh xclip ranger i3lock-fancy scrot scrub wmname imagemagick cmatrix htop neofetch python3-pip procps tty-clock fzf lsd bat pamixer flameshot
    if [ $? != 0 ] && [ $? != 130 ]; then
        echo -e "\n${redColor}[!] Failed Installing Packages!\n${endColor}"
        exit1
    else    
        echo -e "\n${greenColor}[+] Installation Successfull...\n${endColor}"
        sleep 1.5
    fi