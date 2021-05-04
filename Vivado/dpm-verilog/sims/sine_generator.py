from numpy import arange
import math

x = arange(2048)

for t in x:
    time = t * math.pi * 2 / 2047.0
    y = int(2.0 ** 30 * (1 - math.cos(time)))
    print("\thann[{}] = {};".format(t, y))
