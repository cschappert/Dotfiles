#!/bin/sh

urxvtd -q -f -o
xcompmgr -n &
hsetroot -fill /home/chris/Pictures/Wallpapers/Amargosa_desert.jpg &
trayer --edge top --align right --SetDockType true \
   --SetPartialStrut true --expand true --width 5 \
   --transparent true --alpha 0 --tint 0x000000 --height 19 &
exec xmonad
