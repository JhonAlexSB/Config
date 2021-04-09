#!/usr/bin/bash

r=$(echo -e "LVDS\nVGA" | dmenu -i -p "Selecciona Apagar:" -fn "Cantarell-10" -nf '#ffb52a' -sb '#ffb52a' -sf '#222')

case "$r" in
    LVDS) xrandr --output LVDS-1 --off; feh --bg-fill ~/.config/i3/wallpaper/pic1.png ;;
    VGA)  xrandr --output VGA-1 --off ;;
    *) echo "No s'ha trobat $r (LVDS|VGA|)" ;;
esac

