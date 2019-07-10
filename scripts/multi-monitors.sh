#!/bin/bash

if xrandr | grep "DP-2-1 connected" && xrandr | grep "DP-2-2 connected"
then
	sh ./home/adaber/.screenlayout/atDesk.sh
	feh --bg-fill /home/adaber/pictures/wallpapers/leaves_green_plant_blur.jpg
	exit
else
	xrandr --output eDP-1 -s 1920x1080 --primary
	i3-msg move workspace 1 to eDP-1
	i3-msg move workspace 2 to eDP-1
	i3-msg move workspace 3 to eDP-1
	i3-msg move workspace 4 to eDP-1
	i3-msg move workspace 5 to eDP-1
	i3-msg move workspace 6 to eDP-1
	i3-msg move workspace 7 to eDP-1
	i3-msg move workspace 8 to eDP-1
	i3-msg move workspace 9 to eDP-1
	i3-msg move workspace 0 to eDP-1
	exit
fi

if xrandr | grep "HDMI-2 connected"
then
	xrandr --output eDP-1 -s 1920x1080 --primary
	xrandr --output HDMI-2 -s 1920x1080 --right-of eDP-1
else
	xrandr --output eDP-1 --auto --primary
fi
