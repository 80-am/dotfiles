#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
if xrandr | grep -q "eDP-1 connected"; then
	polybar laptop &
fi
if xrandr | grep -q "DP-2 connected"; then
	polybar external &
fi
