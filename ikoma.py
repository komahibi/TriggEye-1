
 #!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Sample script

"""
from ast import Nonlocal
from os import set_inheritable
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

def main(a ,b ,c):
    (x, y, z) = (-a, -b, -c)
    c = math.sqrt(x * x + z * z)
    
    if(x > 0):
        atan = math.degrees(math.atan(z/x))
    else:
        atan =180 + math.degrees(math.atan(z/x))
    print("atan")
    print(atan)
    siita2 = int(atan) + 90
    print(siita2)
    if(siita2 <= 180):
        rotation = siita2
        robot.rotate(rotation)
    elif(siita2 <= 360):
        rotation = -360 + siita2
        robot.rotate(rotation)
    else:
        print("[siita2]miss!!!!")
    #robot.rotate(40)
    siita1 = int(math.degrees(math.atan(y/c))) 
    robot.tilt(siita1)
    print(siita1)
    return rotation
    
   

def finish(rotation):
     robot.tilt(0)
     robot.rotate(-rotation)
     print("finish!!rotation↓")
     print(rotation)

def test(num):
    robot.rotate(num)


if __name__ == '__main__':
    rotation = main(-1,1,1)
    time.sleep(5)
    finish(rotation)

'''
def on_press(key):
    if key == keyboard.Key.up:
        robot.tilt(55)
        #robot.joystick(1, 0)
    if key == keyboard.Key.down:
        #robot.joystick(-1, 0)
        robot.tilt(-25)
    if key == keyboard.Key.right:
        #robot.joystick(0, -1)
        robot.rotate(-50)
    if key == keyboard.Key.left:
        #robot.joystick(0, 1)
        robot.rotate(50)
    if key == keyboard.Key.space:
        robot.tts("こんにちは")
        



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
'''