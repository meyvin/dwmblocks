#!/bin/sh

# Prints the current volume or 🔇 if muted.

case $BLOCK_BUTTON in
	1) setsid -f "$TERMINAL" -e pulsemixer ;;
	2) pamixer -t ;;
	4) pamixer --allow-boost -i 1 ;;
	5) pamixer --allow-boost -d 1 ;;
	3) notify-send " Volume module" "\- Shows volume , ﱝ if muted.
- Middle click to mute.
- Scroll to change." ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

[ $(pamixer --get-mute) = true ] && echo ﱝ && exit

vol="$(pamixer --get-volume)"

if [ "$vol" -gt "70" ]; then
	icon=" "
elif [ "$vol" -lt "30" ]; then
	icon=" "
else
	icon="墳 "
fi

printf "%s%s " "$icon" "$vol%"
