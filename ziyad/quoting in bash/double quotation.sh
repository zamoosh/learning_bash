#!/bin/bash

# in double quota, the $, will mean in right way, unless there is
# a backslash before it.

path="C:\User\$USER\Downloads"
echo "$path"

# now printing the result with backslash:
echo -e "\n"
path="C:\User\\$USER\Downloads"
echo "$path"
echo "as you can see, the $ will mean in right way"

# more example
echo -e "\n"
path="/root/\$USER"
echo "$path"

# to make the story short
# double quotes, remove the special meaning from everything
# except $ and `
# however, you can add \ to remove these characters too.
# or add extra \ to remove the meaning of pre \
