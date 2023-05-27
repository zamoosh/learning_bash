#!/bin/bash

# STRING LIST is exactly normal list in python
# you can store any data to it
# here is a string list in bash: {ali,1,4,mohammad,mouse,phone}
# note that between each , and {} must not be any space
# if we put a space in any place of string list, then the interpreter
# would use that as a solid string

echo "echo a string list without space:" {ali,2,4,jan,mouse,phone}
echo "echo a string list with space in any place:" {ali ,2,4,jan,mouse,phone}

# RANGE LIST is like string list, but using the range() in python!
# {1,2,3,4,5,6,7,8,9,10} is {1..10}
echo -e "\n"
echo "{1,2,3,4,5,6,7,8,9,10} is:" {1,2,3,4,5,6,7,8,9,10}
echo "{1..10} is: " {1..10}

# we can use reverse order in range list:
echo -e "\n"
echo "use the range list in reverse order"
echo "{10..1} is: " {10..1}

# we can use letters also:
echo -e "\n"
echo "a to z in range list"
echo "{a..z} is: " {a..z}

echo "reverse of a to z in range list"
echo "{z..a} is: " {z..a}

# we can use steps in range list, just like the third argument in python's range() method
echo -e "\n"
echo "{1..30..2} is: " {1..30..2}
echo "{1..54..4} is: " {1..54..4}

# we can prefix the range list to generate string
echo -e "\n"
echo "month{1..12} is: " month{1..12}

# we can use the leading 0 to set the length for the digits
echo "month{01..12} is: " month{01..12}

# we can also nest range lists like below:
echo -e "\n"
echo "month{01..3}/day{01..3} is: " month{01..3}/day{01..3}
