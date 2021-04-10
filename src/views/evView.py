#if b'sommers_rd_0' in topic:
#    sommers_rd_0_avail = msg == b'Available'
#if b'sommers_rd_1' in topic:
#    sommers_rd_1_avail = msg == b'Available'

class evView(timerView):
    def __init__(self, disp, *args, **kwargs):
        super().__init__(self, disp, *args, **kwargs)
        self.__battery_level__ = None

    def __tick__(self):
        self.update()

    def subscriptions(self):
        return {  
                 b'teslamate/cars/1/usable_battery_level' : self.battery_level
                 #b'evcharger/sommers_rd_0/state':          func,
                 #b'evcharger/sommers_rd_1/state':          func,
               }

    def battery_level(self, topic, msg):
        self.__battery_level__ = int(msg)

    def update(self):
        frm = self.disp.create_frame()
        frm.clear()

        if self.__battery_level__ is None:
            frm.text(4,0,"--%", 1, (128,128,128))
        else:
            if self.__battery_level__ >= 0:  gauge_color = (128,128,0) # Red
            if self.__battery_level__ >= 15: gauge_color = (128,128,0) # Yellow
            if self.__battery_level__ >= 50: guage_color = (0,128,0)   # Green
            
            # Battery Level and Fill Draw
            frm.text(4,0,str(self.__battery_level__)+"%", 1, (128,128,128))
            frm.fill_rect(3,10,int( round( (18*self.__battery_level__)/100) ),5, gauge_color)
        
        # Battery Outline
        frm.rect(2,9,20,7, (128,128,128))
        frm.vline(22,11,3, (128,128,128))

        self.disp.push(frm)
