import NXOpen
import NXOpen.Annotations as ann
import NXOpen.UF
import NXOpen.Drawings

theSession = NXOpen.Session.GetSession()
theUfSession = NXOpen.UF.UFSession.GetUFSession()
workPart = theSession.Parts.Work

list_window = theSession.ListingWindow
list_window.Open()


list_window.WriteLine("寫出字串")
list_window.Close()