#!/usr/bin/zsh

name=$1
adjective=$2

user=$(whoami)
date=$(date)
working_directory=$(pwd)
echo "the working directory is: ${working_directory}"

echo "Good morning ${name}!!"
sleep 1
echo "You're looking good today ${name}!!"
sleep 1
echo "You have the best ${adjective} I've ever seen ${name}!!"

sleep 2

echo "You are currently logged in as {$user} and you're in the directory ${working_directory}. Also, today is ${date}"
