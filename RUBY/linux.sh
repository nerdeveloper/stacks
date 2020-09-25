#!/bin/bash

#colors

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
source ./installers/linux.sh


echo "***** Installing PostgresqlDB, Ruby, Rails and NodeJS ********"
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

echo -e "Checking for Ruby"
sleep 2 
if [-x "$(command -v ruby)"];
then 
    echo -e " ${RED} You have Ruby installed! \033[0m] "
else 
    install_ruby
fi

echo -e "Checking for Rails"
sleep 2
if[-x "$(command -v rails)"];
then echo -e " ${RED} You have Rails installed! \033[0m]"
else 
    gem install rails
    echo -e "${BLUE} Rails has been installed! \033[0m]"
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