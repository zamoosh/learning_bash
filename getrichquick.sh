#!/usr/bin/zsh

echo 'how old are you?'
read age

echo "Hello $USER! you are $age old years old!"

echo "$USER $HOSTNAME $PWD"

echo "-----"
sleep 1
clear

echo "*----"
sleep 1
clear

echo "**---"
sleep 1
clear

echo "***--"
sleep 1
clear

echo "****-"
sleep 1
clear

echo "*****"
sleep 1
clear


getrich=$((($RANDOM % 15) + $age))
echo "you will be rich when you are $getrich"
