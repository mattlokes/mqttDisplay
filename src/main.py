topic_subs = [ b'evcharger/sommers_rd_0/state',
               b'evcharger/sommers_rd_1/state',
               b'teslamate/cars/1/usable_battery_level' ]

last_message = 0
message_interval = 5
counter = 0


def sub_cb(topic, msg):
  print((topic, msg))

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
    client.check_msg()
    if (time.time() - last_message) > message_interval:
      last_message = time.time()
      counter += 1
  except OSError as e:
    restart_and_reconnect()
