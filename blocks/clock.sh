#! /bin/bash
icon=
dte="$(date +"%a %d %B %H:%M"| sed 's/  / /g')"
printf "\x1f%s \x0b%s" "$icon" "$dte"
