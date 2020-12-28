#!/bin/sh

#mode=`cvt 1920 1080 60 | grep "^Modeline" | sed 's/Modeline//'`
#xrandr --newmode $(cvt 1920 1080 60 | grep "^Modeline" | sed 's/Modeline//')

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode VGA-0 "1920x1080_60.00"
xrandr --output VGA-0  --mode "1920x1080_60.00"
xrandr --output LVDS --off

xwallpaper --zoom Bilder/ivan.png
