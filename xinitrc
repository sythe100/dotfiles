#!/bin/sh
xset -b
dwmstatus &
st -e tmux &                            # Start st with tmux embedded; tag 1
#tabbed vimprobable2 -e &                # Start vimprobable in tabbed; tag 2
#st -c Mutt -e mutt &                    # Start an st instance running mutt; tag 3
#zim &                                   # Start the desktop wiki; tag 4
#st -c Ranger -e ranger &                # Start an st instance running a file browser; tag 8
#st -c Sys -e htop &                     # Start tmux with various sys monitory tools; tag 9

# set background
#feh --bg-scale /home/aaron/Wallpapers/paisley-dwm.png

# Start the window manager
exec dwm 
#exec env GNOME_SHELL_SESSION_MODE=classic gnome-session --session gnome-classic
#exec /home/aaron/bin/startdwm
