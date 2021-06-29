#! /bin/bash 
icon=
mem="$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
printf "%s %s \\n" "$icon" "$mem"
