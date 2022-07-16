# Copyright (c) 2019 Tak Jaga
# Released under the Apache License, Version 2.0
# https://github.com/takjg/TriggEye/blob/master/LICENSE

from this import d
import time

from math import sqrt
from sys  import argv, stdin
from time import perf_counter
import ikoma


def getArgs():
    interval = float(argv[1]) # minimum trigger interval (seconds)
    margin   =   int(argv[2]) # margin for error (millimeters)
    return (interval, margin)

def main(interval, margin):
    line = stdin.readline()
    idx  = parse(line)
    while line:
        line = stdin.readline()
        row = line.split(', ')
        detect(idx, row, interval, margin)

def parse(header):
    names = header.split(', ')
    n = len(names)
    z = zip(names, range(n))
    return dict(z)

def get(idx, row, name):
    i = idx[name]
    return row[i]

last = 0

def detect(idx, row, interval, margin):
    d0 = diff(idx, row, 0)
    d1 = diff(idx, row, 1)
    dd = average(d0, d1)
    
    
    #if d0 < margin or d1 < margin:
    global last
    now = perf_counter()
    if now - last > interval:
        #frame = get(idx, row, 'frame')
        #print('{} {} {}'.format(frame, d0, d1), flush=True)
        last = now
        #print(d0)      

        print(dd, flush=True)
        (x ,y ,z) = dd
        rotation = ikoma.main(x, y, z)
        '''
        num = -180
        print("start")
        while (num <= 180):
            print(num)
            ikoma.test(num)
            time.sleep(3)
            num += 10
        print("testfinish")
        '''
        time.sleep(int(interval/2))
        ikoma.finish(rotation)

 

def diff(idx, row, lr):
    g = gaze(idx, row, lr)
    e =  eye(idx, row, lr)
    #d = distance(e)
    #d = 660
    distan = 1500
    if(distance(g)==0):
        d = 0
    else:
        d = distan/distance(g)
    a = add(e, mul(g, d))
    a = ycheck(a,g,e)
    return a
    #return int(distance(a))

# cf. https://github.com/TadasBaltrusaitis/OpenFace/wiki/Output-Format
def gaze(idx, row, lr):
    def g(c):
        return float(get(idx, row, 'gaze_{}_{}'.format(lr, c)))
    return (g('x'), g('y'), g('z'))

def eye(idx, row, lr):
    i = 20 if lr == 0 else 48
    def e(c):
        sum = 0
        for j in range(i, i + 8):
            sum += float(get(idx, row, 'eye_lmk_{}_{}'.format(c, j)))
        return sum / 8
    return (e('X'), e('Y'), e('Z'))

def distance(v):
    (x, y, z) = v
    return sqrt(x * x + y * y + z * z)

def mul(v, n):
    (x, y, z) = v
    return (x * n, y * n, z * n)

def add(v, u):
    (x0, y0, z0) = v
    (x1, y1, z1) = u
    return (x0 + x1, y0 + y1, z0 + z1)

def average(v, n):
    (x0, y0, z0) = v
    (x1, y1, z1) = n
    if(y0 + y1 == 0):
        return ((x0 + x1)/2, 0, (z0 + z1)/2)
    return ((x0 + x1)/2, (y0 + y1)/2, (z0 + z1)/2)

def ycheck(a,g,e):
    (x0, y0, z0) = a
    (x1, y1, z1) = g
    (x2, y2, z2) = e
    underground = 300
    if(y0 > underground):
        if(y1 == 0):
            under = 0
        else:
            under = (-y2 + underground)/y1
        return add(e, mul(g, under))
    return a


if __name__ == '__main__':
    main(*getArgs())
