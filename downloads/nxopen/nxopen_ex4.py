#File1.py
import NXOpen
import traceback
 
import os
 
 
def main():
    try:
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, "Called main from File1")
        
        path = os.path.dirname(__file__)+'\File2.py'
        
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, path)
        
        parameters = []
        
        NXOpen.Session.GetSession().Execute(path, "NXJournal", "main", parameters)
        
    except Exception as ex:
        lw = NXOpen.Session.GetSession().ListingWindow
        lw.Open()
        lw.WriteLine(str(ex))
 
 
if __name__ == '__main__':
    main()
    
'''
    #File2.py
import NXOpen
 
def main():
    try:
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, "Called main from File2")       
    except Exception as ex:
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, "Exception in main from File2")
'''
 
 
if __name__ == '__main__':
    main()