#!/bin/bash

RED='\033[0;31m'
BLUE='\033[\0;34m\n'
PURPLE='\033[0;35m'
bold=$(tput bold)

echo "***** Installing Apache, MySQL and PHP for Debiana and Ubuntu OS ********"
sleep 1

echo "***** Updating services ****"
sudo apt-get update
sleep 3

echo  "Checking for Apache Server"
sleep 2
if [ $(find /etc/init.d -name apache2) ]
then
    echo "${RED} ${bold}You have apache2 server installed!"
else
    echo -e "${BLUE} ${bold}Installing Apache2 Server"
    sleep 2
    sudo apt-get update && sudo apt-get install apache2 -y
    echo -e  "${BLUE} ${bold}Apache server has been installed!"
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/init.d -name mysql) ]
then
    echo "${RED} ${bold}You have MySQL server installed!"
else
    echo -e "${BLUE} ${bold}Installing MySQL Server"
    sleep 2
    sudo apt install mysql-server -y 
    echo -e  "${BLUE} ${bold}MySQL server has been installed!"
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/php -name php) ]
then
    echo "${RED} ${bold}You have PHP installed!"
else
    echo -e "${BLUE} ${bold}Installing PHP"
    sleep 2
    sudo apt install php libapache2-mod-php php-mysql
    echo -e  "${BLUE} ${bold}PHP has been installed!"
    
fi

echo Done
echo -e "${PURPLE} ${bold}Tweet me @_nerdeveloper"




