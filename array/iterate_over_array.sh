#!/bin/bash

arr=(1 'c' 3 "ali" "mohammad")
# show array in a string. use * instead @ in brackets
# we use * when we are showing an array in a string.
# this is for not to combine the array and the string
# * is like toString or __str__() methods
# @ gives us array items that we can iterate
echo "show array in string"
echo "the array is: ${arr[*]}"
echo ""

# show array not in a string. use @ as normal
echo "show array not in a string"
echo "${arr[@]}"
echo ""

# array length
echo "array length"
echo "${#arr[@]}"
echo ""

# array items
echo "array items"
echo "${arr[@]}"
echo ""

echo "iterate over items in an array using @"
for i in "${arr[@]}"; do
  echo "$i"
done
echo ""

echo "iterate over indexes in an array using !"
for i in "${!arr[@]}"; do
  echo "$i"
done
echo ""

# length of an array is: ${#array[@]}
echo "iterate over items in an array using length of array"
for ((i = 0; i < "${#arr[@]}"; i++)); do
  echo "${arr[$i]}"
done
echo ""
