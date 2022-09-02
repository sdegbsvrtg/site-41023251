# from https://stackoverflow.com/questions/29596584/getting-a-list-of-xml-tags-in-file-using-xml-etree-elementtree
import xml.etree.ElementTree as ET
# load and parse the file
xmlTree = ET.parse('two_link_slvs_shaft_simple.simscene.xml')

elemList = []

for elem in xmlTree.iter():
    elemList.append(elem.tag)

# now I remove duplicities - by convertion to set and back to list
elemList = list(set(elemList))

# Just printing out the result
print(elemList)

for i in elemList:
    print(i)