#!/bin/sh

urxvtd -q -f -o
xcompmgr -n &
hsetroot -fill $HOME/Pictures/Wallpapers/Death_Valley.jpg &

# Here's a config for trayer:
# trayer --edge top --align right --padding 10 \
#   --SetDockType true --SetPartialStrut true --expand true --width 5 \
#   --transparent true --alpha 0 --tint 0x000000 --height 18 &

# Set up dwm's status bar the simple way
#while xsetroot -name "`date +'%a %b %d %H:%M'`"
#do
#   sleep 1
#done &

# Set up dwm's status bar with conky
conky | while read -r cnkyln; do xsetroot -name "$cnkyln"; done &

#exec xmonad
exec dwm
