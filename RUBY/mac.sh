#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

#version
NODEJS_VERSION='10'
MONGODB_VERSION='3.6'




echo "***** Installing PostgresqlDB, Ruby, Rails and NodeJS ********"
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

echo -e "Checking for Ruby"
if [-x "$(command -v ruby)"];
then 
    echo -e " ${RED} You have Ruby installed!"
else 
    echo -e "${PURPLE} Installing Ruby "
    sleep 2 
    brew install ruby
    echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
    source ~/.bash_profile
    echo -e "${BLUE} Ruby has been installed!"
fi

echo -e "Checking for Rails"
if[-x "$(command -v rails)"];
then 
    echo -e "${RED} You have Rails Installed!"
else
    echo -e "${PURPLE} Installing Rails"
    gem install rails
    echo -e "Rails has been installed!"
fi


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