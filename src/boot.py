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

disp = Display(machine.Pin(14, machine.Pin.OUT), columns=4, rows=1)

while station.isconnected() == False:
  pass

print('Connection successful')
print(station.ifconfig())
