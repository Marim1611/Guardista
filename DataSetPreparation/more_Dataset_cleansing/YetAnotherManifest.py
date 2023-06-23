import json
import pandas as pd
from tqdm import tqdm
import re
import sys
import os
from xml.dom import minidom
import xml.etree.ElementTree as ET
#from lxml import etree



sys.stdin.reconfigure(encoding='utf-8')
sys.stdout.reconfigure(encoding='utf-8')



# parse an xml file by name
rootpath = sys.argv[1]
FunctionLabeler = sys.argv[2]
xmlPath = rootpath + '/manifest.xml'
file = ET.parse(xmlPath)



"""
Some patterns in the ll function names
define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad"(i32* %this)
define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::CWE124_Buffer_Underwrite__char_alloca_cpy_81_bad::action"(i32* %this, i8* %data)

define void @"CWE124_Buffer_Underwrite__char_alloca_cpy_81::bad"()
define void @CWE124_Buffer_Underwrite__char_alloca_cpy_02_bad()
define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54_bad()

define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54b_badSink(i8* %data)
define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54c_badSink(i8* %data)
define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54d_badSink(i8* %data)
define void @CWE124_Buffer_Underwrite__char_alloca_cpy_54e_badSink(i8* %data)
"""


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
  
  matchees = dict()
  for i, lin in enumerate(content):
    matches_func_line = re.findall(NormFuncLineRGX , str(lin))
    matches_func_name = re.findall(NormFuncNameRGX , str(lin))

    if(matches_func_line):
      matchees[i] = matches_func_line[0]


  
  
  CVE_string = "CVE"
  if(len(CVE_ID) > 0):
    for id in CVE_ID:
      CVE_string = CVE_string + id+","
  
  #print(matchees)
  for line, matchFuncLine in matchees.items():
    #print(matchFuncLine)
    
    FunctionHeader_with_Mariem_tag = matchFuncLine+ " " +CVE_string + " "+'\n'
    print(FunctionHeader_with_Mariem_tag)
    content[line] = FunctionHeader_with_Mariem_tag
    
  FileLL.writelines(content)
  FileLL.close()
  
  if(matchees):
    return 1,1
  else:
    print(f"Function {funcname} Not found")
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
            
            (funcName, funcContent) = getBadFuncNameInLLVM(rootpath+"/llfiles/"+llfilename, filenamewithoutext, ID)

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