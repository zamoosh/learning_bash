#!/usr/bin/zsh

name=$1
adjective=$2

user=$(whoami)
date=$(date)
working_derectory=$(pwd)


echo "Good Mornin $name!!"
sleep 1
echo "You're login good today $name!!"
sleep 1
echo "You have the best $adjective I've ever seen $name!!"

sleep 2

echo "You are currently logged in as $user and you're in the directory $working_derectory. Also today is $date"
