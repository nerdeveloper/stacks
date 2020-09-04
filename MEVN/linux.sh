#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
source ./installers/linux.sh



echo "***** Installing MongoDB, Nuxtjs and NodeJS ********"
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


echo  "Checking for Create-Nuxt-app(Vue)"
sleep 2

if [ -x "$(command -v create-nuxt-app)" ];
then
    echo -e  " ${RED} You have Create-Nuxt-app(Vue) installed! \033[0m"
else
    echo -e " ${BLUE} Installing Create-Nuxt-app(Vue)"
    sleep 2
    sudo npm install -g create-nuxt-app
    echo -e  " ${BLUE} Create-Nuxt-app(Vue) has been installed! \033[0m"
    
fi

echo  "Checking for MongoDB"
sleep 2
if [ -x "$(command -v mongo)" ];
then
    echo -e " ${RED} You have MongoDB database Installed! \033[0m"
else
    install_mongodb    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo \033[0m"




