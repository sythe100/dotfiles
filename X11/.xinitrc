#!/bin/sh
xset -b
#st -e tmux &                            # Start st with tmux embedded; tag 1
#dwb &                                   # Start dwb
#st -c Mutt -e mutt &                    # Start an st instance running mutt; tag 3
#st -c Ranger -e ranger &                # Start an st instance running a file browser; tag 8
#st -c Sys -e htop &                     # Start tmux with various sys monitory tools; tag 9
#
# set background
feh --bg-scale /home/aaron/Wallpapers/simple/windy.png

# Source Xresourses
#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrload lolitastic.theme

#Enable compositing
compton -cCb -o0

# Start the window manager
exec i3 
