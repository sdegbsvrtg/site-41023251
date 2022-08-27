#------------------------------------------------------------------------------
# These imports are needed for the following template code
#------------------------------------------------------------------------------
import NXOpen
import NXOpen.BlockStyler

#------------------------------------------------------------------------------
# Represents Block Styler application cls
#------------------------------------------------------------------------------
class length_width_heightpy:
    # static class members
    theSession = None
    theUI = None
    
    #------------------------------------------------------------------------------
    # Constructor for NX Styler class
    #------------------------------------------------------------------------------
    def __init__(self):
        try:
            self.theSession = NXOpen.Session.GetSession()
            self.theUI = NXOpen.UI.GetUI()
            self.theDlxFileName = "E:/nxopen_record/length_width_height.py.dlx"
            self.theDialog = self.theUI.CreateDialog(self.theDlxFileName)
            self.theDialog.AddApplyHandler(self.apply_cb)
            self.theDialog.AddOkHandler(self.ok_cb)
            self.theDialog.AddUpdateHandler(self.update_cb)
            self.theDialog.AddInitializeHandler(self.initialize_cb)
            self.theDialog.AddDialogShownHandler(self.dialogShown_cb)
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            raise ex

    #------------------------------------------------------------------------------
    # This method shows the dialog on the screen
    #------------------------------------------------------------------------------
    def Show(self):
        try:
            self.theDialog.Show()
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
    
    #------------------------------------------------------------------------------
    # Method Name: Dispose
    #------------------------------------------------------------------------------
    def Dispose(self):
        if self.theDialog != None:
            self.theDialog.Dispose()
            self.theDialog = None
    
    #------------------------------------------------------------------------------
    # ---------------------Block UI Styler Callback Functions--------------------------
    #------------------------------------------------------------------------------
    
    #------------------------------------------------------------------------------
    # Callback Name: initialize_cb
    #------------------------------------------------------------------------------
    def initialize_cb(self):
        try:
            self.group0 = self.theDialog.TopBlock.FindBlock("group0")
            self.string0 = self.theDialog.TopBlock.FindBlock("string0")
            self.string01 = self.theDialog.TopBlock.FindBlock("string01")
            self.string02 = self.theDialog.TopBlock.FindBlock("string02")
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))

    #------------------------------------------------------------------------------
    # Callback Name: dialogShown_cb
    # This callback is executed just before the dialog launch. Thus any value set 
    # here will take precedence and dialog will be launched showing that value. 
    #------------------------------------------------------------------------------
    def dialogShown_cb(self):
        try:
            # ---- Enter your callback code here -----
            pass
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
    #------------------------------------------------------------------------------
    # Callback Name: apply_cb
    #------------------------------------------------------------------------------
    def apply_cb(self):
        errorCode = 0
        try:
            # ---- Enter your callback code here -----
            pass
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            errorCode = 1
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
        return errorCode
    
    #------------------------------------------------------------------------------
    # Callback Name: update_cb
    #------------------------------------------------------------------------------
    def update_cb(self, block):
        try:
            if block == self.string0:
                # ---- Enter your code here -----
                pass
            elif block == self.string01:
                # ---- Enter your code here -----
                pass
            elif block == self.string02:
                # ---- Enter your code here -----
                pass
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
        return 0
    
    #------------------------------------------------------------------------------
    # Callback Name: ok_cb
    #------------------------------------------------------------------------------
    def ok_cb(self):
        errorCode = 0
        try:
            # ---- Enter your callback code here -----
            workPart = self.theSession.Parts.Work
            unit1 = workPart.UnitCollection.FindObject("MilliMeter")
            p0 = workPart.Expressions.FindObject("p0")
            p1 = workPart.Expressions.FindObject("p1")
            p3 = workPart.Expressions.FindObject("p3")
            workPart.Expressions.EditWithUnits(p0, unit1, str(self.string0.Value))
            workPart.Expressions.EditWithUnits(p1, unit1, str(self.string01.Value))
            workPart.Expressions.EditWithUnits(p3, unit1, str(self.string02.Value))
            self.theSession.UpdateManager.DoUpdate(0)
            errorCode = self.apply_cb()
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            errorCode = 1
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
        return errorCode
        
    #------------------------------------------------------------------------------
    # Function Name: GetBlockProperties
    # Returns the propertylist of the specified BlockID
    #------------------------------------------------------------------------------
    def GetBlockProperties(self, blockID):
        try:
            return self.theDialog.GetBlockProperties(blockID)
        except Exception as ex:
            # ---- Enter your exception handling code here -----
            self.theUI.NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
        
        return None
    
def main():
    thelength_width_heightpy = None
    try:
        thelength_width_heightpy =  length_width_heightpy()
        #  The following method shows the dialog immediately
        thelength_width_heightpy.Show()
    except Exception as ex:
        # ---- Enter your exception handling code here -----
        NXOpen.UI.GetUI().NXMessageBox.Show("Block Styler", NXOpen.NXMessageBox.DialogType.Error, str(ex))
    finally:
        if thelength_width_heightpy != None:
            thelength_width_heightpy.Dispose()
            thelength_width_heightpy = None
    
if __name__ == '__main__':
    main()
