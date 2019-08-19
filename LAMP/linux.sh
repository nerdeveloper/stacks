#!/bin/bash

RED='\033[0;31m'
BLUE='\0;34'
PURPLE='\033[0;35m'

echo "***** Installing Apache, MySQL and PHP for Debiana and Ubuntu OS ********"


echo "Checking for Apache Server"

if [ $(/etc/init.d/apache2 status | grep -v grep | grep 'Apache2 is running' | wc -l) > 0 ]
then
 echo -e "${PURPLE}Waoh! Apache is Installed!"
else
   echo "Installing Apache..."
  sudo apt-get update && sudo apt-get install apache2 -y
  echo -e "${PURPLE}Apache is Installed!"

fi