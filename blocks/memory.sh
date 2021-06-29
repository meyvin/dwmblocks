#! /bin/bash 
icon=
mem="$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
printf "\x1a%s\x0b %s" "$icon" "$mem"
