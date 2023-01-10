#!/usr/bin/python
import config
import sys

from phue import Bridge

b = Bridge(config.HUE_IP)

# If the app is not registered and the button is not pressed, press the button and call connect() (this only needs to be run a single time)
b.connect()
b.get_api()

light_names = b.get_light_objects('name')
desktop = light_names['Skrivbordslampa']

if (sys.argv[1] == 'toggle'):
    desktop.on = not desktop.on
    sys.exit(0)

if (sys.argv[1] == 'on'):
    desktop.on = True
    sys.exit(0)

val = int(sys.argv[1]) / 100
cur_bright = desktop.brightness


if (val > 0 and  cur_bright < 254):
    desktop.brightness = int(cur_bright + (cur_bright * val))
elif (val < 0 and cur_bright >= 0):
    sub = int(cur_bright * val)
    desktop.brightness = int(cur_bright) + sub

