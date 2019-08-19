#!/bin/bash

RED='\033[0;31m'
BLUE='\0;34'
PURPLE='\033[0;35m'

echo "***** Installing Apache, MySQL and PHP for Debiana and Ubuntu OS ********"


echo "Checking for Apache Server"

ps cax | grep apache2
if [ $? -eq 1 ]
 then
 echo "Process is running."
else if [ $? -eq 0 ]
 echo "Process is not running."
fi
fi