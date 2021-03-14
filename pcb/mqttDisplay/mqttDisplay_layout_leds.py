import pcbnew


def do_layout(f="mqttDisplay.kicad_pcb"):
    pcb = pcbnew.LoadBoard(f)
    
    xSpacing = 5
    ySpacing = 5
    xNum     = 24
    yNum     = 16
    #
    for i in range(1,385):
        # Get LED
        c = pcb.FindModuleByReference("D{}".format(i))
        # Rotate to 270deg
        c.SetOrientation(270*10)
        
        x= int( (i-1) % xNum  )
        y= int( (i-1) // xNum )
        c.SetPosition(pcbnew.wxPointMM(x*xSpacing,y*ySpacing))
        print "Positioned D{}".format(i)
    
    pcb.Save(f)

def layout_matrix():
    do_layout()
