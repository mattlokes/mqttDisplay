from views.view import *
import ntptime
import utime

class clockView(timerView):
    def __init__(self, disp, *args, **kwargs):
        super().__init__(disp, *args, **kwargs)
        ntptime.settime() #Set system time to ntp time

    def __tick__(self):
        self.update()

    def bst_adjust(self,time_tuple):
        #Month November, December, January, Feburary, never adjust
        if time_tuple[1] in [11, 12, 1, 2]:
            return time_tuple

        time_list = list(time_tuple)
        # Month is April, May, June, July, August, September, always adjust
        if time_list[1] in [4,5,6,7,8,9]:
            time_list[3] += 1
            return tuple(time_list)

        #Else must be October/March, work out all sundays
        dons = time_list[2] + (6 - time_list[6]) #date of next sunday
        dos = [ dons+(7*i) for i in range(5) if dons+(7*i) <= 31 ]
        dols = dos[-1]
        
        # October
        if time_list[1] == 10:
            time_list[3] += 1 if time_list[2] < dols else 0
        # March
        if time_list[1] == 3:
            time_list[3] += 0 if time_list[2] < dols else 1

        return tuple(time_list)

    def update(self):
        frm = self.disp.create_frame()
        frm.clear()
        time = self.bst_adjust(utime.gmtime())
        frm.text(0,4, "{:02d}".format(time[3]), 1, (128,128,0))
        frm.text(13,4,"{:02d}".format(time[4]), 1, (128,0,128))

        #frm.hline(22,11,3, (128,128,128))

        self.disp.push(frm)
