#!/bin/bash


echo "you are died"

echo "hey, you like coffe? (y/n)"

read condition
clear

if [[ $condition == "y" ]]; then
	echo "you're awesome!"
else
	echo "leave right now!!!"
fi
