#!/bin/bash

# check existing of a file or dir
# better to use -e instead of -a
echo "file exists or not"
[[ -e ali ]] && echo "yes"
[[ -e "ali" ]] && echo "yes"
echo ""

# check is a file is a dir
echo "file or directory"
[[ -d file.sh ]] && echo "yes" || echo "not a dir"
[[ -d "file.sh" ]] && echo "yes" || echo "not a dir"
[[ -d ali ]] && echo "yes" || echo "not a dir"
[[ -d "ali" ]] && echo "yes" || echo "not a dir"
echo ""

# check is a file is a dir
echo "file is regular or not"
[[ -f ali ]] && echo "regular" || echo "not a regular"
echo ""
