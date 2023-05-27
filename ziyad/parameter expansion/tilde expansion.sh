#!/bin/bash

# this is tilde: ~
# ~ refers to the home dir
# we can use ~ to access previous directories we were on
# ~ is $HOME

echo "~"
echo ~

# type username after ~, we can go to another user's home dir
echo -e "\n"
echo "if the username exists, then we'll get a path"
echo "the 'guest' username exists, so ~guest is:" ~guest
echo "the 'ali' username not exists, so ~ali is:" ~ali
echo "the 'root' username not exists, so ~ali is:" ~root

# using ~ to store the history of walking around
# ~- is $OLDPWD
echo -e "\n"
printf "we are here now: '%s' \n" "$(pwd)"
cd ~ || exit 0
printf "we are here now: '%s' \n" "$(pwd)"
printf "now I can use the ~- to go back \n"
cd ~- || exit 0
printf "we are here now: '%s' \n" "$(pwd)"
printf "I can use ~- to back again! \n"
cd ~- || exit 0
printf "we are here now: '%s' \n" "$(pwd)"
printf "\n"
printf "we can use the ~- forever \n"

# ~+ is exactly the $PWD or pwd command
# ~+ is $PWD
printf "\n\n"
printf "\$PWD is: %s \n" "$PWD"
printf "\pwd is: %s \n" "$(pwd)"
echo "\~+ is:" ~+

exit 0
