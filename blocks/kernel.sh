#! /bin/bash 
icon=
kern="$(uname -r)"
printf "\x18%s \x0b%s" "$icon" "$kern"
