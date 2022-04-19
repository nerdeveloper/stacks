#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

echo "***** Installing Django for macOS ********"
sleep 2

echo -e "Checking for Django"
sleep 2
if pip3 list | grep Django &> /dev/null; then
    echo -e " ${RED} You have Django installed!"
else
    echo -e " ${BLUE} Installing Django"
    sleep 2
    pip3 install django
    echo -e " ${BLUE} Django has been installed!"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo"
