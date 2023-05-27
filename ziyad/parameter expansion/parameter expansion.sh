#!/bin/bash

# ${} -> parameter expansion
# some environment variables are:
printf "HOME: %s \n" "${HOME}"
printf "USER: %s \n" "${USER}"
printf "PATH: %s \n" "${PATH}"
printf "HOSTNAME: %s \n" "${HOSTNAME}"
printf "HOSTTYPE: %s \n" "${HOSTTYPE}"

# ^
# convert the first letter to uppercase
printf "\n\n"
printf "^ in bash: \n"
printf "%s \n" "${HOSTNAME^}"
age=12
printf "%d \n" "${age^}" # not working in numeric data

# ^^
# convert all the letters to upper case
printf "\n\n"
printf "^^ in bash: \n"
printf "%s \n" "${HOSTNAME^^}"
printf "%d \n" "${age^}"       # not working in numeric data

# ,
# convert first letter to lower case
name="ALI"
printf "\n\n"
printf ", in bash: \n"
printf "%s \n" "${name,}"
printf "%d \n" "${age,}" # not working in numeric data

# ,,
# convert all the letters to upper case
printf "\n\n"
printf ",, in bash: \n"
printf "%s \n" "${name,,}" # all to lower case
printf "%d \n" "${age,,}" # not working in numeric data

# #
# display the length of the value
name="Mohammad"
age="1234"
printf "\n\n"
printf "# in bash: \n"
printf "length of name is: %s characters \n" "${#name}"
printf "length of age is: %d characters \n" "${#age}"

# slicing string in bash
# just like [n:m] in python
# ${variable : offset : length}
name="MOHAMMAD RAHIMI"
printf "\n\n"
printf "%s \n" "${name:0:2}"  # start from 0 and 2 steps go forward
printf "%s \n" "${name:5:2}"  # start from 5 and 2 steps go forward
printf "%s \n" "${name:4}"  # start from 5 and go till the end

# also, we can use the negative numbers for offset
# this will count the variable from end, just like python
name="MOHAMMAD"
# name           =  M  O  H  A  M  M  A  D
# positive index =  0  1  2  3  4  5  6  7
# negative index = -8 -7 -6 -5 -4 -3 -2 -1
# when we want to use the negative index, we must put a space after first :
printf "%s \n" "${name: -3}"  # start from index -3 and to till the end
