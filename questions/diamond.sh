#!/bin/bash

diameter=$1
sign=$2

get_input() {
  diameter=$1
  sign=$2
  if [[ "$diameter" && "$sign" ]]; then
    condition="true"
  else
    condition="false"
  fi
  echo "$condition"
}

generate_diamond() {
  diameter=$1
  sign=$2
  space_length=$((diameter / 2))
  line_length=1
  space_counter=0
  line_counter=0
  normal=true
  for ((i = 0; i < diameter; i++)); do
    while ((space_counter < space_length)); do
      echo -n " "
      ((space_counter++))
    done

    while ((line_counter < line_length)); do
      echo -n "$sign"
      ((line_counter += 1))
    done

    echo ""

    if "$normal"; then
      ((line_length += 2))
      ((space_length--))
    else
      ((line_length -= 2))
      ((space_length++))
    fi

    ((space_counter = 0))
    ((line_counter = 0))

    if ((line_length == diameter + 2)); then
      ((line_length = line_length - 4))
      ((space_length = 1))
      normal=false
    fi
  done
}

while true; do
  echo "please enter an ODD number for diameter and a CHAR to generate a diamond"
  read -r diameter sign
  condition=$(get_input "$diameter" "$sign")
  if [[ "$condition" == "true" ]]; then
    if ((diameter % 2 != 0)); then
      break
    fi
    echo "please enter an odd number!"
    sleep 2
    clear
  fi
  clear
done

clear
generate_diamond "$diameter" "$sign"
