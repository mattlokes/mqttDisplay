import time
from umqttsimple import MQTTClient
import ubinascii
import machine
import micropython
import network
import esp
esp.osdebug(None)
import gc
gc.collect()

ssid = 'echoAP'
password = 'M0nkeyM0nkey'
mqtt_server = '192.168.30.194'

client_id = ubinascii.hexlify(machine.unique_id())

station = network.WLAN(network.STA_IF)

station.active(True)
station.connect(ssid, password)

while station.isconnected() == False:
  pass

print('Connection successful')
print(station.ifconfig())
