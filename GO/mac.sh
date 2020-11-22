#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

#version
NODEJS_VERSION='10'
MONGODB_VERSION='3.6'




echo "***** Installing PostgresqlDB, Go and NodeJS ********"
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

echo -e "Checking for Go"
sleep 2

if [-x "$(command go version)"];
then 
    echo -e "${RED} You have Go installed!"
else 
    echo -e " ${BLUE} Installing Go"
    sleep 2 
    echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
    mkdir -p $HOME/go/{bin,src}
    echo 'export GOPATH=$HOME/go' >> ~/.bash_profile
    echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bash_profile
    source ~/.bash_profile
    brew install go 
    echo -e " ${BLUE} Go has been installed! \033[0m "


echo  "Checking for Postgresql Database"
sleep 2
if [ $(find /usr/local/bin -name postgresql) ]
then
    echo -e " ${RED} You have PostgresqlDB installed! \033[0m"
else
    echo -e " ${BLUE} Installing Postgresql Database"
    sleep 2
    brew tap homebrew/services && \
    brew install postgresql && \
    brew services start postgresql
    echo -e  " ${BLUE} PostgresqlDB has been installed! \033[0m"
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo"