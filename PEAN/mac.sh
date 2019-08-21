#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

#version
NODEJS_VERSION='10'




echo "***** Installing PostgresqlDB, Express-Generator, Angular and NodeJS ********"
sleep 2


echo -e  "Checking for Nodejs"
sleep 2

if [ -x "$(command -v node)" ];
then
    echo -e " ${RED} You have NodeJS installed!"
else
    echo -e " ${BLUE} Installing Nodejs and npm "
    sleep 2
    brew install node@${NODEJS_VERSION}
    
fi

echo  "Checking for Express Generator"
sleep 2

if [ -x "$(command -v express-generator)" ];
then
    echo -e  " ${RED} You have express-generator installed!"
else
    echo -e " ${BLUE} Installing express-generator"
    sleep 2
    npm install -g express-generator
    echo -e  " ${BLUE} Express-generator has been installed!"
    
fi



echo  "Checking for Angular"
sleep 2

if [ -x "$(command -v ng)" ];
then
    echo -e  " ${RED} You have Angular installed!"
else
    echo -e " ${BLUE} Installing Angular"
    sleep 2
    npm install -g @angular/cli
    echo -e  " ${BLUE} Angular has been installed!"
    
fi

echo  "Checking for Postgresql Database"
sleep 2
if [ $(find /usr/local/bin -name postgresql) ]
then
    echo -e " ${RED} You have PostgresqlDB installed! \e[0m"
else
    echo -e " ${BLUE} Installing Postgresql Database"
    sleep 2
    brew tap homebrew/services && \
    brew install postgresql && \
    brew services start postgresql
    echo -e  " ${BLUE} PostgresqlDB has been installed! \e[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper"




