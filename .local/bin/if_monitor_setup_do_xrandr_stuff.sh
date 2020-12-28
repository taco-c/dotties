#!/bin/sh

# Jeg tror det skriptet som funker ligger i ~/.config/X11/xinitrc

[ "$(xrandr | grep "VGA-0 connected" | wc -l)" = "1" ] && \
[ "$(xrandr | grep "DVI-0 connected" | wc -l)" = "1" ] && \
    xrandr --output VGA-0 --off --output LVDS --mode 1400x1050 --pos 0x0 --rotate normal --output DVI-0 --primary --mode 1920x1080 --pos 1400x0 --rotate normal && \
    xrandr --output VGA-0 --mode 1280x1024 --pos 1920x0 --rotate normal --output LVDS --off --output DVI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal
