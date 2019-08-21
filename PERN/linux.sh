#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
#version
NODEJS_VERSION='10.x'



echo "***** Installing PostgresqlDB, Nextjs and NodeJS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update


echo -e  "Checking for Nodejs"
sleep 2
if [ -x "$(command -v node)" ];
then
    echo -e " ${RED} You have NodeJS installed! \e[0m"
else
    echo -e " ${BLUE} Installing Nodejs and npm "
    sleep 2
    curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION} -o nodesource_setup.sh && \
    sudo bash nodesource_setup.sh && \
    sudo apt-get install nodejs -y
    echo -e  " ${BLUE} Nodejs and npm has been installed! \e[0m"
    
fi


echo  "Checking for Create-Next-app(React)"
sleep 2

if [ -x "$(command -v create-next-app)" ];
then
    echo -e  " ${RED} You have Create-Next-app(React) installed! \e[0m"
else
    echo -e " ${BLUE} Installing Create-Next-app(React)"
    sleep 2
    sudo npm install -g create-next-app
    echo -e  " ${BLUE} Create-Next-app(React) has been installed! \e[0m"
    
fi

echo  "Checking for Postgresql Database"
sleep 2
if [ $(find /etc/init.d -name postgresql) ]
then
    echo -e " ${RED} You have PostgresqlDB installed! \e[0m"
else
    echo -e " ${BLUE} Installing Postgresql Database"
    sleep 2
    sudo apt-get install postgresql postgresql-contrib
    echo -e  " ${BLUE} PostgresqlDB has been installed! \e[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




