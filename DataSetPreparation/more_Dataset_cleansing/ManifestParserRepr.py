import json
import pandas as pd
from tqdm import tqdm
import re
import sys
import os
from xml.dom import minidom
import xml.etree.ElementTree as ET
#from lxml import etree



'''
This script is the same as manifest parser BUT only runs on the representatives dataset
the structure of the root folder should contain:
1) manifest.xml
2) subfolders, each subfolder contains LLVM files (18 subfolders at the best case)

This script just enters each file and deletes it all keeping only the vulnerable function(s)
so each LLVM file will only contain 1 or more VULNERABLE functions onlyyyyyy.


to run this script
python ManifestParserRepr.py "<root path to the dataset folder>" true
'''






sys.stdin.reconfigure(encoding='utf-8')
sys.stdout.reconfigure(encoding='utf-8')



# parse an xml file by name
rootpath = sys.argv[1]
FunctionLabeler = sys.argv[2]
xmlPath = rootpath + '/manifest.xml'
file = ET.parse(xmlPath)




import string

def preprocessLLFuncName(filename):
  '''
  takes file name, returns the function name in it as a regex script

  it removes the extention, removes any alphabet at the end of the name
  '''
  
  filenameWithoutExtension = re.split('\.',filename)[0]
  
  LLFileName = filenameWithoutExtension + '.ll'
  
  while (filenameWithoutExtension[-1] != '_'):
    filenameWithoutExtension = filenameWithoutExtension[:-1]
  filenameWithoutExtension = filenameWithoutExtension[:-1]
  return filenameWithoutExtension, LLFileName


def regexifyFunctionName(funcName):
    '''
    takes function name returns a regex for the function line, and the function name only.
    also returns a regex for special case function line and special case function name only.
    special case happens when the function is defined like this:
        define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::bad"()
        define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54c_badSink(i8* %data)
        define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad::action"(i32* %this, i8* %data)
        define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad"(i32* %this)
    '''

    NormFuncLine = "define.*"+funcName+".*bad.*\{"
    NormFuncName = "define.*@.*("+funcName+".*bad.*)\{"

    return NormFuncLine, NormFuncName#, SpecFuncLine, SpecFuncName



def getBadFuncNameInLLVM(llfilepath, funcname, CVE_ID):
  if(os.path.isfile(llfilepath)):
    FileLL = open(llfilepath, 'r+', encoding='utf-8', errors='ignore')
  else:
    #print(f"cant open or locate file {llfilepath}")
    return -1, -1
  content = FileLL.readlines()
  
  FileLL.close()
  FileLL = open(llfilepath, 'w', encoding='utf-8', errors='ignore')
  NormFuncLineRGX, NormFuncNameRGX = regexifyFunctionName(funcname)
  
  CVE_string = "CVE"
  if(len(CVE_ID) > 0):
    for id in CVE_ID:
      CVE_string = CVE_string + id+","


  matchees = dict()
  functionContent = []
  insideFunction = False
  for i, lin in enumerate(content):
    matches_func_line = re.findall(NormFuncLineRGX , str(lin))
    matches_func_name = re.findall(NormFuncNameRGX , str(lin))

    if(matches_func_line):
      lin = matches_func_line[0] + " "+CVE_string+" "+'\n'
      matchees[i] = matches_func_line[0]
      insideFunction = True
    
    if(insideFunction):
       functionContent.append(str(lin))
    if(re.match('}', str(lin))):
       insideFunction=False


  
  

  
#   #print(matchees)
#   for line, matchFuncLine in matchees.items():
#     #print(matchFuncLine)
    
#     FunctionHeader_with_Mariem_tag = matchFuncLine+ " " +CVE_string + " "+'\n'
#     print(FunctionHeader_with_Mariem_tag)
#     content[line] = FunctionHeader_with_Mariem_tag
    
  FileLL.writelines(functionContent)
  FileLL.close()
     
  
  if(matchees):
    return 1,1
  else:
    print(f"Function {funcname} Not found")
    os.remove(llfilepath)
    return False, False
  




root = file.getroot()
print(len(root))



count = 0


DF = pd.DataFrame()
DF.loc[0,"cve-ids"] = "gg"
DF.loc[0, "fileName"]= "gg"
DF.loc[0, "function_name_in_binary"] = "gg"
DF.loc[0, "testCaseID"] = 0

for testcase in tqdm(range(len(root))):
    for file in range(len(root[testcase])):
            ID = re.findall(r'CWE(\d+)_', root[testcase][file].attrib["path"])
            ID = [ID[0]]
            filename = root[testcase][file].attrib["path"]
            
            filenamewithoutext, llfilename = preprocessLLFuncName(filename)

            FullFilepath = rootpath+llfilename
            for rootdir, dirs, files in os.walk(rootpath):
                for name in files:
                    if name==llfilename:
                        FullFilepath = os.path.join(rootdir, name)


            
            (funcName, funcContent) = getBadFuncNameInLLVM(FullFilepath, filenamewithoutext, ID)

            if(funcName == False):
                newlist = ["safe", llfilename, "UNKNOWN", count]
                DF.loc[count] = newlist
                count = count+1
                continue
            elif(len(root[testcase][file]) == 0):
                newlist = ["safe", llfilename, "UNKNOWN", count]
                DF.loc[count] = newlist
                count = count+1
                continue
            elif(funcName == -1):
                continue
                
            else:
                newlist = [int(ID[0]), llfilename, funcName, count]
                DF.loc[count] = newlist
                count = count+1

DF.to_csv(rootpath+"/JulietLabels.csv")