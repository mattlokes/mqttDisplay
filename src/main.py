topic_subs = [ b'evcharger/sommers_rd_0/state',
               b'evcharger/sommers_rd_1/state',
               b'teslamate/cars/1/usable_battery_level' ]

sommers_rd_0_avail = False
sommers_rd_1_avail = False
tesla_battery      = 0

buff = None

def init_display(size=256):
  global buff
  buff = NeoPixel(machine.Pin(14, machine.Pin.OUT), size)
  for i in range(size):
      buff[i] = (0,0,0)
  buff.write()

def sub_cb(topic, msg):
  global sommers_rd_0_avail, sommers_rd_1_avail, tesla_battery
  if b'sommers_rd_0' in topic:
      sommers_rd_0_avail = msg == b'Available'
  if b'sommers_rd_1' in topic:
      sommers_rd_1_avail = msg == b'Available'
  if b'usable_battery_level' in topic:
      tesla_battery = int(msg)
  print("Sommers Rd 0 Availabe: {}\nSommers Rd 1 Available:{}\nTesla Battery: {}\%".format(sommers_rd_0_avail, sommers_rd_1_avail, tesla_battery))

def connect_and_subscribe():
  global client_id, mqtt_server, topic_subs
  client = MQTTClient(client_id, mqtt_server)
  client.set_callback(sub_cb)
  client.connect()
  for t in topic_subs:
      client.subscribe(t)
      print('Subscribed to %s topic' % (t))
  return client

def restart_and_reconnect():
  print('Failed to connect to MQTT broker. Reconnecting...')
  time.sleep(10)
  machine.reset()

try:
  client = connect_and_subscribe()
except OSError as e:
  restart_and_reconnect()

init_display()

while True:
  try:
    #color = [(32,0,0), (0,32,0), (0,0,32), (32,32,0), (32,0,32),(0,32,32), (32,32,32)]
    #color = [(8,0,0), (0,8,0), (0,0,8), (8,8,0), (8,0,8),(0,8,8), (8,8,8)]
    #color = [(3,0,0), (0,3,0), (0,0,3), (3,3,0), (3,0,3),(0,3,3), (3,3,3)]
    color = [(1,0,0), (0,1,0), (0,0,1), (1,1,0), (1,0,1),(0,1,1), (1,1,1)]
    for c in color:
        client.check_msg()
        for i in range(buff.n):
            buff[i] = c
            buff.write()
            time.sleep(0.015)

  except OSError as e:
    restart_and_reconnect()
