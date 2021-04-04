import sys

from PixelPanel.PixelPanel import *
from adafruit_gfx.gfx import *

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
