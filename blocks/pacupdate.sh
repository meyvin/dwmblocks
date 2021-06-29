#!/bin/bash
icon=
cupd=$(checkupdates | wc -l)
printf "%s %s \\n" "$icon" "$cupd" 
