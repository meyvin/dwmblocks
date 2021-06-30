#!/bin/sh

vol="$(pamixer --get-volume)"
if [ "$vol" == "0" ]; then
  icon="ﱝ"
elif [ "$vol" -gt "70" ]; then
	icon=""
elif [ "$vol" -lt "30" ]; then
	icon=""
else
	icon="墳"
fi

printf "%s %s" "$icon" "$vol%"
