import json
import pandas as pd
from tqdm import tqdm
import re
import sys
import os
from xml.dom import minidom
import xml.etree.ElementTree as ET
#from lxml import etree


"""
Remember the dataset 'Juliet test Suite v1.3' ?
the results of the dataset was inside a xml file
so this script just puts the CVE-ID, filename, root vulnerable function name and test case counter in a single csv file called JulietLabels.csv

THIS script runs when we compile each test case independently, not a whole family of vulnerabilities

run this script like this:
python ManifestParser.py "D:\DATASET\rootpath" false

if you want to append the label beside the function header inside the LLVM file just run the script like this:
python ManifestParser.py "D:\DATASET\rootpath" true

the functionlabeler is not fully experimented, it may produce bugs, so leave it some time until updated please.

ENJOY :)
"""


# parse an xml file by name
rootpath = str(sys.argv[1])
FunctionLabeler = str(sys.argv[2])
LLModifier = str(sys.argv[3])
xmlPath = rootpath + '/manifest.xml'
file = ET.parse(xmlPath)



'''

def getBadFuncNameInLLVM(llfilepath, funcname, CVE_ID):
  if(os.path.isfile(llfilepath)):
    FileLL = open(llfilepath, 'r+')
  else:
    print(f"cant open or locate file {llfilepath}")
    return -1,-1
  content = FileLL.read()
  func_splitted_name = funcname
  func_splitted_name = re.sub(r'::','.*',func_splitted_name)
  func_splitted_name = re.sub(r'<.*>','.*',func_splitted_name)
  regex_script_funcNameOnly = 'define.*@(.*'+func_splitted_name+'\(.*\)).*\{'
  regex_script = 'define.*@.*'+func_splitted_name+'\(.*\).*\{'
  #print(regex_script)
  regex_binary_content_script =  r'define[^\n]*'+func_splitted_name+r'\([^\n]*\n(?:[^\n}]*\n)*}'
  matches_func_line = re.findall(regex_script , str(content))
  matches_func_name = re.findall(regex_script_funcNameOnly , str(content))
  binary_content = re.findall(regex_binary_content_script , str(content))


  CVE_string = "CVE"
  if(len(CVE_ID) > 0):
    for id in CVE_ID:
      CVE_string = CVE_string + id+","
  

  if (matches_func_name != []):
    print(matches_func_name[0])
    final_func_name = matches_func_name[0]
    FunctionHeader_with_Mariem_tag = matches_func_line[0]+ " " +CVE_string + " "
    content = re.sub(regex_script, FunctionHeader_with_Mariem_tag, content)
    FileLL.write(content)
    FileLL.close()
    return final_func_name, binary_content
  else:
    #print(f"will search for bad() for test case:{funcname}")
    pass
  matches_func_name = re.findall(r'define.*@(.*bad.*\(.*\)).*\{' , str(content))
  matches_func_line = re.findall(r'define.*@.*bad.*\(.*\).*\{' , str(content))
  if (matches_func_name != []):
    final_func_name = matches_func_name[0]
    FunctionHeader_with_Mariem_tag = matches_func_line[0]+ " " + CVE_string + " "
    content = re.sub(r'define.*@(.*bad.*\(.*\)).*\{', FunctionHeader_with_Mariem_tag, content)
    FileLL.write(content)
    FileLL.close()
    return final_func_name, binary_content
  else:
    FileLL.close()
    #print(f"Function {funcname} Not found")
    return False, False
  

'''
def getBadFuncNameInLLVM(llfilepath, funcname, CVE_ID, modifyLLVM):
  if(os.path.isfile(llfilepath)):
    FileLL = open(llfilepath, 'r+')
  else:
    print(f"cant open or locate file {llfilepath}")
    return -1,-1
  content = FileLL.readlines()
  func_splitted_name = funcname
  func_splitted_name = re.sub(r'::','.*',func_splitted_name)
  func_splitted_name = re.sub(r'<.*>','.*',func_splitted_name)
  regex_script_funcNameOnly = 'define.*@(.*'+func_splitted_name+'.*'+'\(.*\)).*\{.*$'
  regex_script = 'define.*@.*'+func_splitted_name+'.*\(.*\).*\{'
  #print(regex_script)
  regex_binary_content_script =  r'define[^\n]*'+func_splitted_name+r'\([^\n]*\n(?:[^\n}]*\n)*}'


  func_matches = dict()
  for lin in content:
    matches_func_line = re.findall(regex_script , str(lin))
    matches_func_name = re.findall(regex_script_funcNameOnly , str(lin))
    if(matches_func_line):
      func_matches[matches_func_line[0]] = matches_func_name[0]


  #matches_func_line = re.findall(regex_script , str(content))
  #matches_func_name = re.findall(regex_script_funcNameOnly , str(content))
  #binary_content = re.findall(regex_binary_content_script , str(content))


  CVE_string = "CVE"
  if(len(CVE_ID) > 0):
    for id in CVE_ID:
      CVE_string = CVE_string + id+","
  

  if(len(func_matches.keys()) > 0):
        #print(f"More than One Line match")        #Tabee3y :D
        returns = []
        for k,v in func_matches.items():
              funcLine = k.copy()
              funcLine = re.sub(funcname, '', funcLine)
              if "bad" in funcLine:
                    returns.append((k,v))

        if(returns):
              if(modifyLLVM == "true"):
                for ret in returns:
                  for i,lin in enumerate(content):
                        if(re.search(ret[0], lin)):
                              newData = content
                              newData[i] = ret[0] + CVE_string
                              with open(llfilepath, 'w', encoding='utf-8') as file:
                                file.writelines(newData)
                        break
              return returns
        else:
              print(f"File might be safe, couldn't find bad function in file {llfilepath}")
  else:
        print(f"No Matches ever in file {llfilepath}")
                    


'''
  if (line_matches):
        print(line_matches)

    FunctionHeader_with_Mariem_tag = matches_func_line[0]+ " " +CVE_string + " "
    content = re.sub(regex_script, FunctionHeader_with_Mariem_tag, content)
    FileLL.write(content)
    FileLL.close()
    return final_func_name, binary_content
  else:
    #print(f"will search for bad() for test case:{funcname}")
    pass
  matches_func_name = re.findall(r'define.*@(.*bad.*\(.*\)).*\{' , str(content))
  matches_func_line = re.findall(r'define.*@.*bad.*\(.*\).*\{' , str(content))
  if (matches_func_name != []):
    final_func_name = matches_func_name[0]
    FunctionHeader_with_Mariem_tag = matches_func_line[0]+ " " + CVE_string + " "
    content = re.sub(r'define.*@(.*bad.*\(.*\)).*\{', FunctionHeader_with_Mariem_tag, content)
    FileLL.write(content)
    FileLL.close()
    return final_func_name, binary_content
  else:
    FileLL.close()
    #print(f"Function {funcname} Not found")
    return False, False
'''



root = file.getroot()
print(len(root))




count = 0

if(FunctionLabeler == "true"):
  DF = pd.DataFrame()
  DF.loc[0,"cve-ids"] = "gg"
  DF.loc[0, "fileName"]= "gg"
  DF.loc[0, "function_name_in_binary"] = "gg"
  DF.loc[0, "testCaseID"] = 0

  for testcase in tqdm(range(len(root))):
        for file in range(len(root[testcase])):
              ID = re.findall(r'CWE(\d+)_', root[testcase][file].attrib["path"])
              filename = root[testcase][file].attrib["path"]
              if(filename[-3:] == 'cpp'):
                filenamewithoutext = filename[:-4]
              else:
                filenamewithoutext = filename[:-2]
              llfilename = filenamewithoutext + ".ll"
              #print(rootpath+"/llfiles/"+llfilename)
              #print(filenamewithoutext+"_bad")
              funcLines_And_Names = getBadFuncNameInLLVM(rootpath+"/llfiles/"+llfilename, filenamewithoutext, ID, LLModifier)

              if(funcLines_And_Names == (-1,-1)):
                    continue
              if(funcLines_And_Names and len(funcLines_And_Names) > 1):
                    print(f"MULTIPLE MATCHES IN FILE {rootpath+'/llfiles/'+llfilename}")
                    raise Exception('no')
              elif(funcLines_And_Names and len(funcLines_And_Names) == 1):
                newlist = [int(ID[0]), llfilename, funcLines_And_Names[1], count]
                DF.loc[count] = newlist
                count = count+1
              '''
              if(not (funcLines_And_Names)):
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
              '''
              

else:
  DF = pd.DataFrame()
  DF.loc[0,"cve-ids"] = "gg"
  DF.loc[0, "fileName"]= "gg"
  DF.loc[0, "testCaseID"] = 0
  for testcase in tqdm(range(len(root))):
        for file in range(len(root[testcase])):
              ID = re.findall(r'CWE(\d+)_', root[testcase][file].attrib["path"])
              filename = root[testcase][file].attrib["path"]
              if(filename[-3:] == 'cpp'):
                filenamewithoutext = filename[:-4]
              else:
                filenamewithoutext = filename[:-2]
              llfilename = filenamewithoutext + ".ll"
              if(len(root[testcase][file]) == 0):
                newlist = ["safe", llfilename, count]
                DF.loc[count] = newlist
                count = count+1
                continue
              else:
                newlist = [int(ID[0]), llfilename, count]
                DF.loc[count] = newlist
                count = count+1


DF.to_csv(rootpath+"/JulietLabels.csv")
