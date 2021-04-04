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
from display import *

ssid = 'echoAP'
password = 'M0nkeyM0nkey'
mqtt_server = '192.168.30.194'

client_id = ubinascii.hexlify(machine.unique_id())

station = network.WLAN(network.STA_IF)

station.active(True)
station.connect(ssid, password)


vspi = machine.SPI(2, baudrate=20000000, polarity=0, phase=0, bits=8, firstbit=0, sck=machine.Pin(18), mosi=machine.Pin(23), miso=machine.Pin(19))
disp = Display( vspi , columns=4, rows=2, mode='APA102')

while station.isconnected() == False:
  pass

print('Connection successful')
print(station.ifconfig())
