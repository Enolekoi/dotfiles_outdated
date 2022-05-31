#!/bin/sh

unclutter&
feh --bg-fill '/home/finn/.config/wallpaper/wall.jpg'&
sxhkd&
picom --experimental-backends&
exec xmonad;
#dwmblocks&
#exec dwm;
