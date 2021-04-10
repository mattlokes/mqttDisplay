''' View Base Class '''
class view():
    def __init__(self, disp, *args, **kwargs):
        self.disp = disp
        self.__active__ = False

    def __tick__(self):
        pass

    def subscriptions(self):
        return {}

    def activate(self):
        self.__active__ = True
        disp.clear()
        self.update()
    
    def deactivate(self):
        self.__active__ = False

    @property
    def active(self):
        return self.__active__

    def update(self):
        pass

class timerView(view):
    def __init__(self, disp, *args, **kwargs):
        super().__init__(self, disp, *args, **kwargs)
        self.__duration__ms__ =  kwargs.get('duration_ms', 10000)

class eventView(view):
    def __init__(self, disp, *args, **kwargs):
        super().__init__(self, disp, *args, **kwargs)
        self.__duration__ms__ =  None

class viewControl():
    def __init__(self, *args, **kwargs):
        self.__period_ms__   = kwargs.get('period_ms',  100)
        self.__mqtt_broker__ = kwargs.get('mqtt_broker', '192.168.30.194')
        self.__client_id__   = kwargs.get('client_id', None)

        self.__timer_view_dur__ = 0
        self.__timer_view_ptr__ = 0
        self.__timer_views__    = []
        self.__event_views__    = []
        self.__subscriptions__  = {}
        self.__timer__  = machine.Timer(1)
        self.__mqtt__ = MQTTClient(self.__client_id__, self.__mqtt_broker__)
        self.__mqtt__.set_callback(self.__mqtt_callback__)

    def __mqtt_callback__(self, topic, msg):
        if topic not in self.__subscriptions__: raise Exception("Got a message for topic '{}' but somehow we arent subscribed to it....".format(topic))
        for cb in self.__subscriptions__[topic]:
            cb(topic, msg)

    def __restart_reconnect__(self):
        print('Failed to connect to MQTT broker. Reconnecting...')
        time.sleep(10)
        machine.reset()

    def __view_rrb__(self):
        self.__timer_view_dur__ -= self.__period_ms__
        if self.__timer_view_dur <= 0:
            if self.__timer_view_ptr__ == len(self.__timer_views__)-1: rrb_ptr = 0
            else:                                                      rrb_ptr = self.__timer_view_ptr += 1
            if rrb_ptr != self.__timer_view_ptr__:
                self.__view_switch__(rrb_ptr)
                return True
        return False

    def __view_switch__(self, ptr):
        #Deactive Current View
        self.__timer_views__[self.__timer_view_ptr__].deactivate()
        #Set new view pointer
        self.__timer_view_ptr__ = ptr
        #Set view duration to new view duration
        self.__timer_view_dur__ = self.__timer_views__[self.__timer_view_ptr__].__duration_ms__
        #Activate New View
        self.__timer_views__[self.__timer_view_ptr__].activate()

    def __tick__(self):
        try:
            self.__mqtt__.check_msg()
        except OSError as e:
            self.__restart_reconnect__()

        # Round Robin Views if there are multiple and the duration is up, if it doesnt switch, call view tick function
        if not self.__view_rrb__():
            self.__timer_views__[self.__timer_view_ptr__].__tick__()
            
    def register(self, view ):
        if isinstance(view, timerView): self.__timer_views__ += [view]
        if isinstance(view, eventView): self.__event_views__ += [view]

        #register view subscriptions
        for topic, cbs in view.subscriptions():
            if topic in self.__subscriptions__: self.__subscriptions__[topic].extend(cbs if isinstance(cbs,list) else [cbs])
            self.__subscriptions__[topic] = cbs if isinstance(cbs, list) else [cbs]

    def start(self):
        try:
            self.__mqtt__.connect()
        except OSError as e:
            self.__restart_reconnect__()
        
        # Enable first view
        self.__view_switch__(0)
        # Enable View Control Ticker
        self.__timer__.init(period=self.__period_ms__, mode=machine.Timer.PERIODIC, callback=lambda t:self.__tick__() )

    def stop(self):
        self.__timer__.deinit()
        self.__timer_view_dur__ = 0
        self.__timer_view_ptr__ = 0
