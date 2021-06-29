#!/bin/bash
bat5=
bat15=
bat25=
bat50=
bat75=
bat90=
batfull=
charging=

if [ -d "/sys/class/power_supply/BAT0" ]
then
    read -r capacity </sys/class/power_supply/BAT0/capacity
    if (( $capacity < 5 ))
    then
      printf "\x1b%s \x0b%s" "$bat5" "$capacity%"
    elif (( $capacity < 15 ))
    then
      printf "\x1c%s \x0b%s" "$bat15" "$capacity%"
    elif (( $capacity < 25 ))
    then
      printf "\x1d%s \x0b%s" "$bat25" "$capacity% "
    elif (( $capacity < 50 ))
    then
      printf "\x1e%s \x0b%s" "$bat50" "$capacity% "
    elif (( $capacity < 75 ))
    then
      printf "\x1e%s \x0b%s" "$bat75" "$capacity%"
    elif (( $capacity < 90 ))
    then
      printf "\x1e%s \x0b%s" "$bat90" "$capacity%"
    else
      printf "\x1e%s \x0b%s" "$batfull" "$capacity%"
    fi
else
    printf ""
fi
