#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'



echo "***** Installing Apache, MySQL and PHP for Debiana and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sudo apt-get update
sleep 3

echo -e  "Checking for Apache Server"
sleep 2
if [ $(find /etc/init.d -name apache2) ]
then
    echo -e " ${RED} You have apache2 server installed!"
else
    echo -e " ${BLUE} Installing Apache2 Server"
    sleep 2
    sudo apt-get update && sudo apt-get install apache2 -y
    echo -e  " ${BLUE} Apache server has been installed!"
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/init.d -name mysql) ]
then
    echo " ${RED}You have MySQL server installed!"
else
    echo -e " ${BLUE}Installing MySQL Server"
    sleep 2
    sudo apt install mysql-server -y
    echo -e  "${BLUE}MySQL server has been installed!"
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/php -name php) ]
then
    echo " ${RED}You have PHP installed!"
else
    echo -e " ${BLUE}Installing PHP"
    sleep 2
    sudo apt install php libapache2-mod-php php-mysql
    echo -e  "${BLUE} PHP has been installed!"
    
fi

echo Done
echo -e "${PURPLE} Tweet me @_nerdeveloper"




