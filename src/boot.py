import time
import math
import ubinascii
import machine
import micropython
import network
import esp
esp.osdebug(None)
import gc
gc.collect()

from umqttsimple.umqttsimple import MQTTClient
from pixelpanel.display import *

ssid = 'echoAP'
password = 'M0nkeyM0nkey'

client_id = ubinascii.hexlify(machine.unique_id())

station = network.WLAN(network.STA_IF)

station.active(True)
station.connect(ssid, password)


vspi = machine.SPI(2, baudrate=20000000, polarity=0, phase=0, bits=8, firstbit=0, sck=machine.Pin(18), mosi=machine.Pin(23), miso=machine.Pin(19))
disp = AnimationBuffer( Display( vspi , columns=3, rows=2, mode='APA102'), period_ms=30)
disp.start()

while station.isconnected() == False:
  pass

print('Connection successful')
print(station.ifconfig())
