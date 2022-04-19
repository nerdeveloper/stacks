#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

echo "***** Installing Flask for macOS ********"
sleep 2

echo -e "Checking for Flask"
sleep 2
if pip3 list | grep Flask &> /dev/null; then
    echo -e " ${RED} You have Flask installed!"
else
    echo -e " ${BLUE} Installing Flask"
    sleep 2
    pip3 install Flask
    echo -e " ${BLUE} Flask has been installed!"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo"
