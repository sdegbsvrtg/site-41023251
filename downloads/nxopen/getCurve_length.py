'''
Toolbar Options -> Menu -> Tools -> Journal -> Play -> Run
'''

import NXOpen
 
def main() :
 
    theSession  = NXOpen.Session.GetSession()
    workPart = theSession.Parts.Work
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
    numCurves  = 0

    for cur in workPart.Curves:
        numCurves += 1
        curveLength = cur.GetLength()
        lw.WriteLine("Curve " + str(numCurves) + " has length " + str(round(curveLength, 3)) + " " + unit)
 
if __name__ == '__main__':
    main()