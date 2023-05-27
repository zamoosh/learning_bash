#!/bin/bash

# $() -> command substitution
# with COMMAND SUBSTITUTION, we can execute a command inside a command
printf "to day is: %s \n" "$(date +'%Y/%m/%d %H:%M:%S')"
echo "you're currently in $(pwd) directory"
exit 0
