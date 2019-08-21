#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'



echo "***** Installing Nginx, MySQL and PHP for Debian and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update


echo -e  "Checking for Nginx Server"
sleep 2
if [ $(find /etc/init.d -name nginx) ]
then
    echo -e " ${RED} You have nginx server installed! \e[0m"
else
    echo -e " ${BLUE} Installing Nginx Server"
    sleep 2
    sudo apt-get install nginx -y
    echo -e  " ${BLUE} Nginx server has been installed! \e[0m"
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/init.d -name mysql) ]
then
    echo -e  " ${RED} You have MySQL server installed! \e[0m"
else
    echo -e " ${BLUE} Installing MySQL Server"
    sleep 2
    sudo apt install mysql-server -y
    echo -e  " ${BLUE} MySQL server has been installed! \e[0m"
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/alternatives/ -name php) ]
then
    echo -e " ${RED} You have PHP installed! \e[0m"
else
    echo -e " ${BLUE} Installing PHP"
    sleep 2
    sudo apt install php libapache2-mod-php php-mysql -y
    echo -e  " ${BLUE} PHP has been installed! \e[0m "
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




