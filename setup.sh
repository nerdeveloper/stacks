#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

makeAllShFilesExecutable () {
    find . -type f -name "*.sh" -exec chmod +x {} \;
}


echo "+-+-+-+-+-+-+
|S|t|a|c|k|s|
+-+-+-+-+-+-+"

makeAllShFilesExecutable

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

installStack () {
    stack=$1
    echo "you chose choice $REPLY which is $stack"
    sleep 1
    echo "Please wait while we install $stack"
    sleep 1
    checkOS
    if [ "$machine" == "Mac" ]; then
        checkHomebrew
        ./$stack/mac.sh
    elif [ "$machine" == "Linux" ]; then
        ./$stack/linux.sh
    else
        echo "Stacks has no support for your Operating System."
    fi
}

PS3="Pick a stack by entering its corresponding number, or enter \"17\" to close: "
options=("LAMP" "LNMP" "MAMP" "MEAN" "MNMP" "MERN" "MEVN" "PEAN" "PERN" "DOCKER" "RUBY" "GO" "PYTHON" "FLASK" "DJANGO" "FASTAPI" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "LAMP"|"LNMP"|"MAMP"|"MNMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            ./$opt/install.sh
            ;;
        "MEAN"|"MERN"|"MEVN"|"PEAN"|"PERN"|"DOCKER"|"RUBY"|"GO"|"PYTHON"|"FLASK"|"DJANGO"|"FASTAPI")
            installStack $opt
            ;;
        "Quit")
            break
            ;;
        *) 
            echo "invalid option $REPLY"
            ;;
    esac
done
