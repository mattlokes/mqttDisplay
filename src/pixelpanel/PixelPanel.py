import math

class DebugBuffer(list):
    def __init__(self, pin, size, **kwargs):
        self.panColumns = kwargs.get('columns', 1)
        self.panRows    = kwargs.get('rows', 1)
        self.panSize    = kwargs.get('panel_size', (8,8))
        self.panNum     = self.panSize[0] * self.panSize[1]
        for _ in range(size):
            list.append(self,0)

    def __setitem__(self, index, value):
        list.__setitem__(self, index, value)

    def __getitem__(self, index):
        return list.__getitem__(self, index)

    def clear(self):
        pass

    def write(self):
        rows = self.panRows * self.panSize[1]
        for r in range(self.panRows):
            roff = (r*self.panNum*self.panColumns)
            for pr in range(self.panSize[1]):
                off = roff + (pr*self.panSize[0])
                rStr = ""
                for cols in range(self.panColumns * self.panSize[0]):
                    rStr += " 1" if self[off] != 0 else " 0"
                    off  += 1
                    if (cols % self.panSize[0]) == (self.panSize[0]-1):
                        off += self.panNum-self.panSize[0]
                print(rStr)    

class PixelPanel():
    ''' PixelPanel object, takes:
          pin/pins   - GPIO pin used to drive the Pixels
          mode       - Type of pixel to drive, APA102 or NeoPixel         [Default:APA102] 
          columns    - The number of LED Panel columns                    [Default:1]
          rows       - The number of LED Panel rows                       [Default:1] 
          panel_size - A list containing the number of pixels in a panel, [Default:(8,8)]
    '''
    def __init__(self,pin, **kwargs ):
        self.mode              = kwargs.get('mode'      , 'APA102' )
        self.panColumns        = kwargs.get('columns'   , 1)
        self.panRows           = kwargs.get('rows'      , 1)
        self.panSize           = kwargs.get('panel_size', (8,8) )
        brightness             = kwargs.get('brightness', 0.03 )

        self.panNum            = self.panSize[0] * self.panSize[1]
        self.width             = (self.panColumns * self.panSize[0])
        self.height            = (self.panRows * self.panSize[1])

        self.__size__          = self.width * self.height
        
        if kwargs.get('debug', False):
             self.__buff__  = DebugBuffer(pin, self.__size__, **__kwargs__)
        elif self.mode == 'APA102':
            from adafruitdotstar.micropython_dotstar import DotStar
            self.__buff__   = DotStar(pin, self.__size__, auto_write=False)
        else:
            from neopixel import NeoPixel
            self.__buff__   = NeoPixel(pin, self.__size__)

        self.brightness = brightness

        self.clear()

        #Pre calculate panel offsets nad intra panel Y offsets to save repeated maths later
        self.__panOffsets__ = [ [0]*self.panRows for _ in range(self.panColumns) ]
        off = 0
        for i in range(self.panRows):
            for j in range(self.panColumns):
                self.__panOffsets__[j][i] = off
                off += self.panNum

        self.__panYOffsets__ = [ self.panSize[0] * i for i in range(self.panSize[1]) ]
        self.__panCol_adj__   = self.panNum - self.panSize[0]
        self.__panRow_adj__   = self.panNum * (self.panColumns-1)

        #Use shift / masking to do divide/modulo for speed
        self.__xDivShift__ = int(math.log(self.panSize[0],2))
        self.__xModMask__  = self.panSize[0] -1
        self.__yDivShift__ = int(math.log(self.panSize[1],2))
        self.__yModMask__  = self.panSize[1] -1

    @property
    def brightness(self):
        """Overall brightness of the pixel"""
        return self.__buff__.brightness

    @brightness.setter
    def brightness(self, brightness):
        self.__buff__.brightness = brightness

    ''' Translate and x,y coord to a linar pixel num '''
    def __transXY__(self, x, y):
        panY = y >> self.__yDivShift__
        offY = y &  self.__yModMask__
        panX = x >> self.__xDivShift__
        offX = x &  self.__xModMask__
        return self.__panOffsets__[panX][panY] + self.__panYOffsets__[offY] + offX

    ''' Set Pixel Horizontal Line Function, optimised '''
    def hline(self, x, y, width, color):
        off = self.__transXY__(x,y)
        for _ in range(width):
            self.__buff__[off] = color
            if ( off & self.__xModMask__) == self.__xModMask__:
                off += self.__panCol_adj__
            off += 1

    ''' Set Pixel Vertical Line Function, optimised '''
    def vline(self, x, y, height, color):
        off = self.__transXY__(x,y)
        for yi in range(y,y+height):
            self.__buff__[off] = color
            if ( yi & self.__yModMask__) == self.__yModMask__:
                off += self.__panRow_adj__
            off += self.panSize[1]

    ''' Set Pixel Function'''
    def pixel(self, x, y, color):
        self.__buff__[self.__transXY__(x,y)] = color
        
    
    ''' Clear the entire display '''
    def clear(self,):
        col = (0,0,0,0) if self.mode == 'APA102' else (0,0,0)
        for i in range(self.__size__):
            self.__buff__[i] = col

    ''' Write the entire display '''
    def write(self):
        if self.mode == 'APA102':
            if self.__buff__.auto_write: return #If autowrite enabled skip function call 
            self.__buff__.show()
        else :
            self.__buff__.write()
