#!/bin/bash


echo "
 _   _   _   _   _   _
/ \ / \ / \ / \ / \ / \
( S | t | a | c | k | s )
\_/ \_/ \_/ \_/ \_/ \_/

"
checkOS () {
    unameOut="$(uname -s)"
    case "${unameOut}" in
        Linux*)     machine=Linux;;
        Darwin*)    machine=Mac;;
        *)          machine="UNKNOWN:${unameOut}"
    esac
}
PS3='Please enter your choice: '
options=("LAMP"  "LEMP" "MAMP"  "MEAN"  "MEMP" "MERN" "MEVN" "PEAN" "PERN" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "LAMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
             bash $opt/install.sh
        ;;
        "LEMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            bash $opt/install.sh
        ;;
        "MAMP")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            bash $opt/install.sh
        ;;
        "MEAN")
            echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                bash $opt/mac.sh
            elif [ "$machine" == "Linux" ]; then
                bash $opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "MEMP")
              echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            bash $opt/install.sh
        ;;
        "MERN")
             echo "you chose choice $REPLY which is $opt"
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            checkOS
            if [ "$machine" == "Mac" ]; then
                bash $opt/mac.sh
            elif [ "$machine" == "Linux" ]; then
                bash $opt/linux.sh
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
                bash $opt/mac.sh
            elif [ "$machine" == "Linux" ]; then
                bash $opt/linux.sh
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
                bash $opt/mac.sh
            elif [ "$machine" == "Linux" ]; then
                bash $opt/linux.sh
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
                bash $opt/mac.sh
            elif [ "$machine" == "Linux" ]; then
                bash $opt/linux.sh
            else
                echo "Stacks has no support for your Operating System."
            fi
        ;;
        "Quit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done