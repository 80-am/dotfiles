#!/usr/bin/python
import config
import random
import time

from phue import Bridge

b = Bridge(config.HUE_IP)

# If the app is not registered and the button is not pressed,
# press the button and call connect() (this only needs to be run a single time)
b.connect()
b.get_api()

light_names = b.get_light_objects('name')
balls = [light_names['Boll 1'], light_names['Boll 2']]

while True:
    for ball in balls:
        ball.xy = [random.random(), random.random()]
        cmd = {'transitiontime': 20, 'on': True, 'bri': 254}
        b.set_light(ball.light_id, cmd)
    time.sleep(0.4688)
