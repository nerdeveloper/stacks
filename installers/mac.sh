#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

function install_homebrew {
   echo -e " Checking for Homebrew"
   if [ -x "$(command -v brew)" ]; then
    echo -e "${BLUE} You have homebrew installed! \033[0m"
   else
    echo -e "${RED} No Homebrew installation found \033[0m"
    echo -e "${PURPLE} Installing Homebrew ... \033[0m"
    sleep 2
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    if [ $? -eq 0 ]; then
      echo -e "${BLUE} Hombrew has been installed! \033[0m"
    else
      echo -e "${RED} Could not complete Homebrew installation \033[0m"
    fi
   fi
}
