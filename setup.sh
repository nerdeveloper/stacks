#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'


echo "+-+-+-+-+-+-+
|S|t|a|c|k|s|
+-+-+-+-+-+-+"

checkOS () {
    unameOut="$(uname -s)"
    case "${unameOut}" in
        Linux*)     machine=Linux;;
        Darwin*)    machine=Mac;;
        *)          machine="UNKNOWN:${unameOut}"
    esac
}

checkHomebrew () {
  source ./installers/mac.sh
  install_homebrew
}

PS3='Please enter your choice or enter "13" to quit: '
options=("LAMP"  "LNMP" "MAMP"  "MEAN"  "MNMP" "MERN" "MEVN" "PEAN" "PERN" "DOCKER" "RUBY" "GO" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "LAMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            ./$opt/install.sh
        ;;
        "LNMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            ./$opt/install.sh
        ;;
        "MAMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            ./$opt/install.sh
        ;;
        "MEAN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                checkHomebrew
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then
                ./$opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "MNMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            ./$opt/install.sh
        ;;
        "MERN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                checkHomebrew
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then
                ./$opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "MEVN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                checkHomebrew
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then
                ./$opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "PEAN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                checkHomebrew
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then
                ./$opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "PERN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                checkHomebrew
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then
                ./$opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;

        
        "DOCKER")
            echo "You chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt..."
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                echo -e " ${RED}Stacks has no support for your Mac OSX Operating System."
                
                elif [ "$machine" == "Linux" ]; then
                ./$opt/install.sh
            else
                echo -e " ${RED} Stacks has no support for your Operating System."
            fi
        ;;

        "RUBY")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo -e "${PURPLE} Please wait while we install $opt"
            sleep 1
            checkOS 
            if ["$machine" == "Mac"]; then
                checkHomebrew 
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then 
                ./$opt/linux.sh
            else 
                echo -e "${RED} Stacks has no support for your Mac OSX Operating System."

        fi

        ;;

        "GO")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo -e "${PURPLE} Please wait while we install $opt"
            sleep 1
            checkOS 
            if ["$machine" == "Mac"]; then
                checkHomebrew 
                ./$opt/mac.sh
                elif [ "$machine" == "Linux" ]; then 
                ./$opt/linux.sh
            else 
                echo -e "${RED} Stacks has no support for your Mac OSX Operating System."

        fi

        ;;
        
        "Quit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done
