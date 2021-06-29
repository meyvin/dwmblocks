#! /bin/bash
icon=
dte="$(date +"%a %d %B %H:%M"| sed 's/  / /g')"
printf "%s %s" "$icon" "$dte"
