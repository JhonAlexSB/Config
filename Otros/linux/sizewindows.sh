#!/bin/bash

#xrandr --newmode "1904x1000_30.00"  72.81  1904 1952 2144 2384  1000 1001 1004 1018
#xrandr --addmode Virtual1 "1904x1000_30.00"
#xrandr -s 1904x1000_30.00

#https://unix.stackexchange.com/questions/227876/how-to-set-custom-resolution-using-xrandr-when-the-resolution-is-not-available-i
#gtf 1900 1400 30

xrandr --newmode "1904x950_30.00"  68.70  1904 1944 2136 2368  950 951 954 967
xrandr --addmode Virtual1 "1904x950_30.00"
xrandr -s 1904x950_30.00
