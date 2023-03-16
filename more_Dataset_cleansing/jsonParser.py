import json
import pandas as pd
from tqdm import tqdm
import re
import os
from xml.dom import minidom
import xml.etree.ElementTree as ET
from lxml import etree


"""
Remember the dataset 'Juliet test Suite v1.3' ?
the results of the dataset was inside a xml file but it specified the line number and file name only, without the source code line.
so this is just a script to put all the results in a csv file called labels.csv, with the source code line causing the vulnerability.

ENJOY :)
"""





# parse an xml file by name
rootpath = 'D:/ClassWork/GP/C'
xmlPath = rootpath + '/manifest.xml'
file = ET.parse(xmlPath)





root = file.getroot()
print(len(root))
DF = pd.DataFrame()

#range(len(root))

DF.loc[0,"line"] = "gg"
DF.loc[0,"CVE-ID"] = "gg"
DF.loc[0, "fileName"]= "gg"
DF.loc[0, "CodeLine"] = "gg"
DF.loc[0, "testCaseID"] = 0




def getSourceCodeLine_FromCSV(filename, linenum, path):
      foldername_re = re.search(r"CWE.*(?=__)", filename)
      if(foldername_re):
        foldername = foldername_re.group()
      else:
        print(filename)
      filepath = path + '/testcases/' + foldername
      if('s01' in os.listdir(filepath)):
            for subfolder in os.listdir(filepath):
                  fullpath = filepath + '/'+subfolder
                  if(filename in os.listdir(fullpath)):
                        fullpath=fullpath + '/' +filename
                        with open(fullpath) as file:
                          for i, line in enumerate(file):
                                if (i == linenum):
                                      return line

                          file.close()
      else:
        filepath = filepath + '/' + filename
        with open(filepath) as file:
              for i, line in enumerate(file):
                    if (i == linenum):
                          return line
              file.close()




#getSourceCodeLine_FromCSV("CWE114_Process_Control__w32_char_connect_socket_01.c", 121, rootpath)



count = 0
for testcase in tqdm(range(len(root))):
      for file in range(len(root[testcase])):
            for flaw in range(len(root[testcase][file])):
                newlist = [root[testcase][file][flaw].attrib["line"], \
                            root[testcase][file][flaw].attrib["name"], \
                              root[testcase][file].attrib["path"], \
                                getSourceCodeLine_FromCSV(root[testcase][file].attrib["path"], int(root[testcase][file][flaw].attrib["line"]), rootpath),\
                                  testcase]
                #DF = pd.concat((DF, newlist), axis=0)
                DF.loc[count] = newlist
                count = count+1
                
DF.to_csv("labels.csv")



'''
for i, row in enumerate(DF):
      DF.loc[i, 'CodeLine'] = getSourceCodeLine_FromCSV(DF.loc[i, 'fileName'], DF.loc[i, 'line'], rootpath)
      if (i > 30):
            break

DF.head()
'''





'''


jsonfile = open('D:\ClassWork\GP\DATABASE\sarifs.json')
data = json.load(jsonfile)
print(data['testCases'][6000]['sarif']['runs'][-1]['results'])

jsonfile.close()


'''







'''
for testcase in root

#use getElementsByTagName() to get tag
testcase = file.getElementsByTagName('testcase')

# one specific item attribute


DF = pd.DataFrame()
DF.loc[0,"line"] = 0
DF.loc[0,"name"] = "aymhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhan"
DF.loc[0, "fileName"]= "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
DF.loc[0, "testCaseID"] = 0






data = etree.parse(file)
result = [node.text.strip() 
    for node in data.xpath("//testcase")]





for i in tqdm(range(len(testcase))):
    files = testcase.getElementByTagName('file')
    
    if(len(files) == 1):
      flaws = files[0].getElementByTagName('flaw')
      if(len(flaws) == 1):
        newlist = [flaws[0].attributes['line'].value, flaws[0].attributes['name'].value, files[0].attributes['path'].value, i]
        # DF.loc[i, "line"] = flaws[0].attributes['line'].value
        # DF.loc[i, "name"] = flaws[0].attributes['name'].value
        # DF.loc[i, "fileName"] = files[0].attributes['path'].value
        # DF.loc[i, "testCaseID"] = i
        DF.append(newlist)
      else:
        for j in range(len(flaws)):
          newlist = [flaws[j].attributes['line'].value, flaws[j].attributes['name'].value, files[j].attributes['path'].value, i]
          DF.append(newlist)
          # DF.loc[i, "line"] = flaws[j].attributes['line'].value
          # DF.loc[i, "name"] = flaws[j].attributes['name'].value
          # DF.loc[i, "fileName"] = files[j].attributes['path'].value
          # DF.loc[i, "testCaseID"] = i
    else:
          for k in range(len(files)):
                flaws = files[k].getElementByTagName('flaw')
                if(len(flaws) == 1):
                  newlist = [flaws[0].attributes['line'].value, flaws[0].attributes['name'].value, files[0].attributes['path'].value, i]
                  # DF.loc[i, "line"] = flaws[0].attributes['line'].value
                  # DF.loc[i, "name"] = flaws[0].attributes['name'].value
                  # DF.loc[i, "fileName"] = files[0].attributes['path'].value
                  # DF.loc[i, "testCaseID"] = i
                  DF.append(newlist)
                else:
                  for j in range(len(flaws)):
                    newlist = [flaws[j].attributes['line'].value, flaws[j].attributes['name'].value, files[j].attributes['path'].value, i]
                    DF.append(newlist)
                    # DF.loc[i, "line"] = flaws[j].attributes['line'].value
                    # DF.loc[i, "name"] = flaws[j].attributes['name'].value
                    # DF.loc[i, "fileName"] = files[j].attributes['path'].value
                    # DF.loc[i, "testCaseID"] = i
                


DF.to_csv("labels.csv")
'''
    
'''


'''