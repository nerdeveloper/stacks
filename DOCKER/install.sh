#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'



echo "***** Installing Docker for Debian and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update



runDocker() {
    sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    sudo apt-key fingerprint 0EBFCD88
    
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu
    $(lsb_release -cs) \
    stable"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y
    echo " ${BLUE} Docker has been installed!"
    
}

echo  "Checking for any Docker Previous Installation "
sleep 2
if [ -x "$(command -v docker)" ]; then
    read -p "Oops! You have Docker previous installed. Do you want to remove it? (y/n)?" -r choice
    case "$choice" in
        y|Y ) echo "YES";;
        n|N ) echo "NO";;
        * ) echo "INVALID";;
    esac
    
    if [[ "$choice" =~ ^[Yy]$ ]]
    then
        echo -e  " ${BLUE} Uninstalling Docker..."
        sudo apt-get remove docker docker-engine docker.io containerd runc
        echo -e " ${BLUE} Installing new verison of Docker..."
        runDocker
        
    else
        exit 0;
        
    fi
    
else
    runDocker
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




