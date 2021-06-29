#!/bin/bash
icon=
cupd=$(checkupdates | wc -l)
printf "\x1d%s \x0b%s" "$icon" "$cupd" 
