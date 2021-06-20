#!/bin/bash

if [ -d "/sys/class/power_supply/BAT0" ]
then
    read -r capacity </sys/class/power_supply/BAT0/capacity
    if (( $capacity < 5 ))
    then
      echo "  ${capacity}% "
    elif (( $capacity < 15 ))
    then
      echo "  ${capacity}% "
    elif (( $capacity < 25 ))
    then
      echo "  ${capacity}% "
    elif (( $capacity < 50 ))
    then
      echo "  ${capacity}% "
    elif (( $capacity < 75 ))
    then
      echo "  ${capacity}% "
    elif (( $capacity < 90 ))
    then
      echo "  ${capacity}% "
    else
      echo "  ${capacity}% "
    fi
else
    printf "  "
fi
