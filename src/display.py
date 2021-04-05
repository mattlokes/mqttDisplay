import sys

from PixelPanel.PixelPanel import *
from adafruit_gfx.gfx import *

import machine

class Display( GFX ):
    def __init__( self, pin, **kwargs):
        self.pp    = PixelPanel(pin, **kwargs)
        super().__init__( width  = self.pp.width,
                          height = self.pp.height,
                          pixel  = self.pp.pixel,
                          vline  = self.pp.vline,
                          hline  = self.pp.hline)
    def write(self):
        self.pp.write()

    def clear(self):
        self.pp.clear()

class AnimationBuffer():
    def __init__(self, disp, period_ms=30):
        self.__disp__      = disp
        self.__queue__     = []
        self.__period_ms__ = period_ms
        self.__timer__     = machine.Timer(0)

    def __tick__(self):
        if len(self.__queue__):
            for func,args,kwargs in self.__queue__.pop(0).get_draw_cmds():
                func(*args,**kwargs)
            self.__disp__.write()
    
    def clear(self):
        self.__queue__ = []

    def create_frame(self):
        return AnimationFrame(self.__disp__)

    def push(self, frame):
        self.__queue__ += [frame]

    def start(self):
        self.__timer__.init(period=self.__period_ms__, mode=machine.Timer.PERIODIC, callback=lambda t:self.__tick__() )

    def stop(self):
        self.__timer__.deinit()

class AnimationFrame():
    def __init__( self, disp):           
        self.__disp__ = disp
        self.__cmds__ = []

    def clear(self):
        self.__cmds__ = []

    def get_draw_cmds(self):
        return self.__cmds__

    def pixel               (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.pixel,               args, kwargs)]
    def line                (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.line,                args, kwargs)]
    def hline               (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.hline,               args, kwargs)]
    def vline               (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.vline,               args, kwargs)]
    def rect                (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.rect,                args, kwargs)]
    def fill_rect           (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.fill_rect,           args, kwargs)]
    def circle              (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.circle,              args, kwargs)]
    def fill_circle         (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.fill_circle,         args, kwargs)]
    def triangle            (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.triangle,            args, kwargs)]
    def fill_triangle       (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.fill_triangle,       args, kwargs)]
    def round_rect          (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.round_rect,          args, kwargs)]
    def fill_round_rect     (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.fill_round_rect,     args, kwargs)]
    def set_text_background (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.set_text_background, args, kwargs)]
    def text                (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.text,                args, kwargs)]
    def clear               (self, *args, **kwargs): self.__cmds__ += [(self.__disp__.clear,               args, kwargs)]
