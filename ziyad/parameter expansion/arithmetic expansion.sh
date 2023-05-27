#!/bin/bash

# $(( )) -> arithmetic expansion
a=3
b=5
printf "a = %s and b = %s \n\n" "${a}" "${b}"
printf "\${a} \$((a + 2)) \$((++a)) %s \n" "${a} $((a + 2)) ${a} $((++a))"  # use \ when want to ignore the expansion
printf "a + b: %s \n" "$((a + b))"

# A ** B: make the A in to the B power
printf "\n\n"
printf "** in bash: \n"
printf "A ** B: make the A in to the B power \n"
printf "%s \n" "$((a ** b))"
