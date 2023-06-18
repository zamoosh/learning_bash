#!/bin/bash

# bc is stands for basic mathematics, which allows us
# to work with the decimal numbers
# bc has an internal argument to show "decimal places"
# how does 'bc' command works:
# "scale=decimal_places; division" | bc

printf "not using the 'bc' command: %s \n" "$((5 / 2))"
printf "%s \n" "$(echo "scale=4; 5.5 / 2" | bc)"  # different ways of using 'bc' command
printf '%s \n' "$(bc <<<'scale=4; 5.5 / 2')"  # different ways of using 'bc' command
echo "scale=4; 5.5 / 2" | bc  # different ways of using 'bc' command

exit 0
