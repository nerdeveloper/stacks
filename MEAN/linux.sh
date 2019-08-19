#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
NODEJS_VERSION='10.x'
MONGODB_VERSION='4.0'



echo "***** Installing MongoDB, Angular and NodeJS ********"
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

echo  "Checking for Angular"
sleep 2
if [ -x "$(command -v ng)" ];
then
    echo -e  " ${RED} You have Angular installed! \e[0m"
else
    echo -e " ${BLUE} Installing Angular"
    sleep 2
    sudo npm install -g @angular/cli
    echo -e  " ${BLUE} Angular has been installed! \e[0m"
    
fi

echo  "Checking for MongoDB"
sleep 2
if [ -x "$(command -v mongo)" ];
then
    echo -e " ${RED} You have MongoDB database Installed! \e[0m"
else
    echo -e " ${BLUE} Installing MongoDB "
    sleep 2
    wget -qO - https://www.mongodb.org/static/pgp/server-${MONGODB_VERSION}.asc | sudo apt-key add - && \
    . /etc/os-release &&  echo "$UBUNTU_CODENAME"
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $UBUNTU_CODENAME/mongodb-org/${MONGODB_VERSION} multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-${MONGODB_VERSION}.list && \
    sudo apt-get update && \
    sudo apt-get install -y mongodb-org
    sudo service mongod start
    echo -e  " ${BLUE} MongoDB has been installed! \e[0m "
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




