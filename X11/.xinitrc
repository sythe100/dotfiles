#!/bin/sh
xset -b
syndaemon -t -k -i 2 &

# set background
feh --bg-scale /home/aaron/Wallpapers/simple/windy.png

# Source Xresourses
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrload lolitastic.theme
numlockx &
xset -dpm

#Enable compositing
#compton -cCb -o0

# Start the window manager
exec i3 
