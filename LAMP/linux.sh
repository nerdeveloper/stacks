#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
BOLD='$(tput bold)'


echo "***** Installing Apache, MySQL and PHP for Debiana and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sudo apt-get update
sleep 3

echo -e  "Checking for Apache Server"
sleep 2
if [ $(find /etc/init.d -name apache2) ]
then
    echo "${BOLD} ${RED} You have apache2 server installed!"
else
    echo -e "${BOLD} ${BLUE} Installing Apache2 Server"
    sleep 2
    sudo apt-get update && sudo apt-get install apache2 -y
    echo -e  "${BOLD} ${BLUE} Apache server has been installed!"
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/init.d -name mysql) ]
then
    echo " ${BOLD} ${RED}You have MySQL server installed!"
else
    echo -e " ${BOLD} ${BLUE} Installing MySQL Server"
    sleep 2
    sudo apt install mysql-server -y
    echo -e  "${BLUE} ${BLUE}MySQL server has been installed!"
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/php -name php) ]
then
    echo " ${BOLD} ${RED}You have PHP installed!"
else
    echo -e " ${BOLD} ${BLUE}Installing PHP"
    sleep 2
    sudo apt install php libapache2-mod-php php-mysql
    echo -e  "${BOLD} ${BLUE} PHP has been installed!"
    
fi

echo Done
echo -e "${PURPLE} ${bold}Tweet me @_nerdeveloper"




