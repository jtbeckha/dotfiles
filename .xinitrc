#!/bin/sh
#
# ~/.xinitrc

xrdb ~/.Xresources

# i3 initialization
xrandr --output HDMI-A-1 --left-of DisplayPort-0 --rotate left
#exec i3 --shmlog-size=26214400
exec i3

# GNOME initialization
#export GDK_BACKEND=x11
#exec gnome-session


