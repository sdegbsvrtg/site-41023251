import NXOpen
#import NXOpen.UF

'''
theSession  = NXOpen.Session.GetSession()
workPart = theSession.Parts.Work
displayPart = theSession.Parts.Display
theUFSession = NXOpen.UF.UFSession.GetUFSession()
'''

def main():
    theUI = NXOpen.UI.GetUI()
    MsgBox = theUI.NXMessageBox
    MsgBox.Show("視窗標題", NXOpen.NXMessageBox.DialogType.Information, "準備開始 NXOPen Python 程式開發!")
    
if __name__ == '__main__':
    main()