#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

echo "***** Installing Flask for Debian and Ubuntu OS ********"
sleep 2

echo -e "Checking for Flask"
sleep 2
if pip3 list | grep Flask &> /dev/null; then
    echo -e " ${RED} You have Flask installed! \033[0m"
else
    echo -e " ${BLUE} Installing Flask"
    sleep 2
    pip3 install Flask
    echo -e " ${BLUE} Flask has been installed! \033[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo \033[0m"
