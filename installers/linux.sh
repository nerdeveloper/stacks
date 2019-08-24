#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'
#version
NODEJS_VERSION='10.x'
MONGODB_VERSION='4.0'

function install_nodejs {
    echo -e " ${BLUE} Installing Nodejs and npm "
    sleep 2
    curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION} -o nodesource_setup.sh && \
    sudo chmod +x nodesource_setup.sh && sudo ./nodesource_setup.sh && \
    sudo apt-get install nodejs -y
    echo -e  " ${BLUE} Nodejs and npm has been installed! \e[0m"
}

function install_mongodb {
    echo -e " ${BLUE} Installing MongoDB "
    sleep 2
    wget -qO - https://www.mongodb.org/static/pgp/server-${MONGODB_VERSION}.asc | sudo apt-key add - && \
    . /etc/os-release && \
    echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $UBUNTU_CODENAME/mongodb-org/${MONGODB_VERSION} multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-${MONGODB_VERSION}.list && \
    sudo apt-get update && \
    sudo apt-get install -y mongodb-org && \
    sudo service mongod start
    echo -e  " ${BLUE} MongoDB has been installed! \e[0m "
}
