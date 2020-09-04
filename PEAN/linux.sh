#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
source ./installers/linux.sh



echo "***** Installing PostgresqlDB, Express-Generator, Angular and NodeJS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update


echo -e  "Checking for Nodejs"
sleep 2
if [ -x "$(command -v node)" ];
then
    echo -e " ${RED} You have NodeJS installed! \033[0m"
else
    install_nodejs
fi

echo  "Checking for Express Generator"
sleep 2
if [ -x "$(command -v express-generator)" ];
then
    echo -e  " ${RED} You have express-generator installed! \033[0m"
else
    echo -e " ${BLUE} Installing express-generator"
    sleep 2
    sudo npm install -g express-generator
    echo -e  " ${BLUE} Express-generator has been installed! \033[0m"
    
fi



echo  "Checking for Angular"
sleep 2
if [ -x "$(command -v ng)" ];
then
    echo -e  " ${RED} You have Angular installed! \033[0m"
else
    echo -e " ${BLUE} Installing Angular"
    sleep 2
    sudo npm install -g @angular/cli
    echo -e  " ${BLUE} Angular has been installed! \033[0m"
    
fi

echo  "Checking for Postgresql Database"
sleep 2
if [ $(find /etc/init.d -name postgresql) ]
then
    echo -e " ${RED} You have PostgresqlDB installed! \033[0m"
else
    echo -e " ${BLUE} Installing Postgresql Database"
    sleep 2
    sudo apt-get install postgresql postgresql-contrib -y
    echo -e  " ${BLUE} PostgresqlDB has been installed! \033[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo \033[0m"




