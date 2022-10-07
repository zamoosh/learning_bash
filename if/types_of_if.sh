#!/bin/bash

number=10
# no different if we put: number="10"
# try putting the 10 in double or single quote
# and see the result is same

# we can only use letter operator like: [-eq, -gt, -lt, -ne, etc]
echo "if condition using POSIX test"
if [ "$number" -eq 10 ]; then
  echo "yes"
fi
echo ""

# we can only use [=, !=, >, etc]
echo "if condition using arithmetic operators"
if ((number == 10)); then
  echo "yes"
fi
echo ""

# we can all operators upper
echo "if condition using condition operators"
if [[ "$number" -eq 10 ]]; then
  echo "yes using POSIX test operator"
fi
if [[ "$number" == 10 ]]; then
  echo "yes using arithmetic"
fi
