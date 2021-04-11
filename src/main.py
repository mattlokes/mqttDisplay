from views.view      import viewControl
from views.evView    import *
from views.clockView import *

control = viewControl(period_ms=100, mqtt_broker='192.168.30.194', client_id=client_id)
control.register( view = evView   (disp, duration_ms=10000))
control.register( view = clockView(disp, duration_ms=10000))
control.start()

while True:
    time.sleep(0.015)
