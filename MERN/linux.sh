#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
source ./installers/linux.sh


echo "***** Installing MongoDB, Nextjs and NodeJS ********"
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
    install_nodejs
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

echo  "Checking for MongoDB"
sleep 2
if [ -x "$(command -v mongo)" ];
then
    echo -e " ${RED} You have MongoDB database Installed! \e[0m"
else
    install_mongodb
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




