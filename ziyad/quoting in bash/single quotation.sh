#!/bin/bash

# single quotation, ignores special meaning inside it.
# I mean, every character which has special mean in bash like
# $, %, & and ect, will lose it's special meaning.

echo '~zamoosh'
echo ~zamoosh

# as you can see, the first echo, just prints: ~zamoosh
# but the second one, will use the special meaning of ~
# here is another example of losing meaning in single quote:
path='C:\User\$USER\Downloads'
echo -e "\n"
echo $path
echo "as you can see, the \$USER has no meaning in the path variable"
echo "also, the backslash "
