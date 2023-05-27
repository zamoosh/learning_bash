#!/bin/bash

# if you want to scape the special meaning of a character,
# you can simply add a '\' before it.
# note that only the first coming phrase will lose the special meaning!
# thing of I have a path and want to store it in a variable

path=C:\User\zamoosh\Downloads
echo $path

# we can use another '\' to ignore the following '\' in this path, like so:
# but certainly this is not the best practice!
path=C:\\User\\zamoosh\\Downloads
echo $path

# as you can see, the backslash has been removed, and because the
# coming char after any backslash in 'path', has no special meaning,
# then they've been considered as letters

# if I want to print: ${path}, I must use the backslash before it. like so:
echo -e "\n"
echo \${path}
