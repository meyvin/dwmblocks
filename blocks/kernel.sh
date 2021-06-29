#! /bin/bash 
icon=
kern="$(uname -r)"
printf "\x1d%s %s \x0b" "$icon" "$kern"
