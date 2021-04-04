topic_subs = [ b'evcharger/sommers_rd_0/state',
               b'evcharger/sommers_rd_1/state',
               b'teslamate/cars/1/usable_battery_level' ]

sommers_rd_0_avail = False
sommers_rd_1_avail = False
tesla_battery      = 0

def sub_cb(topic, msg):
  global sommers_rd_0_avail, sommers_rd_1_avail, tesla_battery, disp
  if b'sommers_rd_0' in topic:
      sommers_rd_0_avail = msg == b'Available'
  if b'sommers_rd_1' in topic:
      sommers_rd_1_avail = msg == b'Available'
  if b'usable_battery_level' in topic:
      tesla_battery = int(msg)
      disp.clear()
      disp.text(4,0,str(tesla_battery)+"%", 1, (128,128,128,0.2))
      disp.write()
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

while True:
  try:
    time.sleep(0.015)
    client.check_msg()
  except OSError as e:
    restart_and_reconnect()
