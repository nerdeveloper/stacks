#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

#version
NODEJS_VERSION='10'
MONGODB_VERSION='3.6'




echo "***** Installing PostgresqlDB, Nextjs and NodeJS ********"
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
    echo -e  " ${BLUE} Nodejs and npm has been installed!"
    
fi

echo  "Checking for Create-Next-app(React)"
sleep 2

if [ -x "$(command -v create-next-app)" ];
then
    echo -e  " ${RED} You have Create-Next-app(React) installed! "
else
    echo -e " ${BLUE} Installing Create-Next-app(React)"
    sleep 2
    npm install -g create-next-app
    echo -e  " ${BLUE} Create-Next-app(React) has been installed!"
    
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




