#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

echo "***** Installing Python for Debian and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update

echo -e "Checking for Python"
sleep 2
if [ -x "$(command -v python3)" ];
then
    echo -e " ${RED} You have Python3 installed! \033[0m"
else
    echo -e " ${BLUE} Installing Python3"
    sleep 2
    sudo apt-get install python3 python3-pip -y
    echo -e " ${BLUE} Python3 and pip3 have been installed! \033[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo \033[0m"
