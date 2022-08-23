#!/bin/sh
xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA-1 --mode 1600x900 --pos 1366x0 --rotate normal --output HDMI-1 --off --output DP-1 --off
#xrandr --output LVDS1 --primary --mode 1366x768 --pos 1600x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VGA1 --mode 1600x900 --pos 0x0 --rotate normal --output VIRTUAL1 --off --output VIRTUAL2 --off
feh --bg-fill ~/.config/i3/wallpaper/pic1.png
