import sys
#sys.path.append('Adafruit_GenericPython_GFX/')

from NeoPixelPanel.NeoPixelPanel import *
from adafruit_gfx.gfx import *

class Display( GFX ):
    def __init__( self, pin, **kwargs):
        self.npp    = NeoPixelPanel(pin, **kwargs)
        super().__init__( width  = self.npp.width,
                          height = self.npp.height,
                          pixel  = self.npp.pixel,
                          vline  = self.npp.vline,
                          hline  = self.npp.hline)
    def write(self):
        self.npp.write()

    def clear(self):
        self.npp.clear()

#if __name__ == '__main__':
#    disp = Display(14,columns=4,rows=1,debug=True)
#    #disp.rect(1,1,5,5, color=1)
#    disp.text(4,0,"70%",1,color=1)
#    disp.write()
