#!/bin/sh
#
# ~/.xinitrc

xrdb ~/.Xresources

# Eye protection
redshift -P -O 5000

# i3 initialization
# Uncomment this for dual monitor setup
#xrandr --output HDMI-A-1 --left-of DisplayPort-0 --rotate left
xrandr --output HDMI-A-1 --mode 3840x2160
#exec i3 --shmlog-size=26214400
exec i3

# GNOME initialization
#export GDK_BACKEND=x11
#exec gnome-session


