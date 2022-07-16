
 #!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Sample script

"""
import pytemi as temi
import time
from pynput import keyboard

import math

# parameters
MQTT_HOST = "10.70.171.249"
MQTT_PORT = 1883
TEMI_SERIAL = "00120374364"

# connect to the MQTT broker
mqtt_client = temi.connect(MQTT_HOST, MQTT_PORT)  

# create robot object
robot = temi.Robot(mqtt_client, TEMI_SERIAL)
number = 0

def on_press(key):
    if key == keyboard.Key.up:
        #robot.tilt(+10)
        global x
        print(x)
        robot.joystick(x, math.sqrt(1 - x^2))
        # robot.joystick(0, -1)
        # robot.joystick(0.8, 0.6)
        # robot.joystick(0, 1)
        x += 0.0000001
    if key == keyboard.Key.down:
        robot.joystick(-1,0)
        #robot.tilt(-10)    
    if key == keyboard.Key.right:
        #robot.joystick(0,-1)
        robot.rotate(-50)
    if key == keyboard.Key.left:
        #robot.joystick(0,1)
        robot.rotate(50)
    if key == keyboard.Key.space:
        robot.tts("こんにちは")
    if key == keyboard.Key.enter:
        robot.tts("あああ")



def on_release(key):
    print('Key released: {0}'.format(
        key))
    robot.stop()
    if key == keyboard.Key.esc:
        # Stop listener
        return False

# Collect events until released
with keyboard.Listener(
        on_press=on_press,
        on_release=on_release) as listener:
    listener.join()
