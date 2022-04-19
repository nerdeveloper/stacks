#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

echo "***** Installing Python for macOS ********"
sleep 2

echo -e "Checking for Python3"
sleep 2

if [ -x "$(command -v python3)" ];
then
    echo -e " ${RED} You have Python3 installed!"
else
    echo -e " ${BLUE} Installing Python3"
    sleep 2
    brew install python
    echo -e " ${BLUE} Python3 and pip3 have been installed!"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo"
