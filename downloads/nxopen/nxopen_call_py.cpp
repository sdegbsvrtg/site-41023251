void TestExecuteManagedLib::do_it()
{
    std::vector<NXOpen::NXString> parameters;
 
    NXOpen::Session::GetSession()->ExecuteManagedProgram("<FULL PATH TO PY FILE>", "main", parameters);
 
    	
}
/*
void MyClass::do_it()
{
    NXOpen::NXString arg1 = "1";
    NXOpen::NXString arg2 = "String argument";
 
    std::vector<NXOpen::NXString >parameters;
    parameters.push_back(arg1);
    parameters.push_back(arg2);
 
    NXOpen::Session::GetSession()->ExecuteManagedProgram("..\\File2.py", "main", parameters);
}

#File2.py
import NXOpen
import sys
 
def main():
    try:
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, "Called main from File2")    
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, str(sys.argv))           
    except Exception as ex:
        NXOpen.UI.GetUI().NXMessageBox.Show("Test Code", NXOpen.NXMessageBox.DialogType.Information, "Exception in main from File2")
 
 
if __name__ == '__main__':
    main()
*/

/*

C#

Looping over NXOpen.Session.Parts to get all open parts:

using NXOpen.Session;
using NXOpen.Part;

Session session = Session.GetSession();
foreach (Part part in session.Parts)
{
    string name = part.Name;
    string fullPath = part.FullPath;
    // Do something with name or fullPath...
}
*/
        