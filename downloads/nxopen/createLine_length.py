'''
Toolbar Options -> Menu -> Tools -> Journal -> Play -> Run
'''

import NXOpen
 
def main() :
 
    theSession  = NXOpen.Session.GetSession()
    workPart = theSession.Parts.Work
    p1 = NXOpen.Point3d(50., -100., 0.)
    p2 = NXOpen.Point3d(50., 100., 0.)
    line1 = workPart.Curves.CreateLine(p1, p2)
    #mm = workPart.UnitCollection.FindObject("MilliMeter")
    lengthList = ["inch","","","","meter","mm"]
    unit = lengthList[int(str(workPart.UnitCollection.GetDefaultDataEntryUnits()))]
    '''
    0: LbmInLbfDegF 	Usual choice for inch parts.
    LbmFtLbfDegF 	Not supported for data entry units
    GMmNDegC 	Not supported for data entry units
    GCmNDegC 	Not supported for data entry units
    4: KgMNRadK 	SI compatibility
    5: KgMmNDegC 	Usual choice for mm parts
    '''
    lw = theSession.ListingWindow
    lw.Open()
    #displayPart = theSession.Parts.Display
    curveLength = line1.GetLength()
    lw.WriteLine("Line created with length " + str(round(curveLength, 3)) + " " + unit)
 
if __name__ == '__main__':
    main()