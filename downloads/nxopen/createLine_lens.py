'''
Toolbar Options -> Menu -> Tools -> Journal -> Play -> Run
'''

import NXOpen
 
def main() :
 
    theSession  = NXOpen.Session.GetSession()
    workPart = theSession.Parts.Work
    vertex = NXOpen.Point3d(0.,0.,0.)
    focus = NXOpen.Point3d(100.,0.,0.)
    axisX = NXOpen.Vector3d(1.,0.,0.)
    axisY = NXOpen.Vector3d(0.,1.,0.)
    focLength = focus.X
    h = 100.0
    lens = workPart.Curves.CreateParabola(vertex, axisX, axisY, focLength, -h, h)
    for y in [-h + 10.0*i for i in range(0, 21)]:
        x = (y*y)/(4.0*focLength)
        p1 = NXOpen.Point3d(x,y,0.)
        p2 = NXOpen.Point3d(250.,y,0.)
        workPart.Curves.CreateLine(focus, p1)
        workPart.Curves.CreateLine(p1, p2)
    lw = theSession.ListingWindow
    lw.Open()
    lw.WriteLine("Done!")
 
if __name__ == '__main__':
    main()