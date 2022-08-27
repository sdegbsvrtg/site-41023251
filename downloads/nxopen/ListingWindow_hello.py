'''
Toolbar Options -> Menu -> Tools -> Journal -> Play -> Run
'''

import NXOpen
 
def main() :
 
    theSession  = NXOpen.Session.GetSession()
    #workPart = theSession.Parts.Work
    #displayPart = theSession.Parts.Display
    lw = theSession.ListingWindow
    lw.Open()
    lw.WriteLine("在 ListingWindos 顯示字串")
 
if __name__ == '__main__':
    main()