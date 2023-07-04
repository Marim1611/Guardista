from Localizer.Common.matchers import levenshtein_similarity
import re
import sys
import os
from time import time, sleep

'''
This script takes the path of the source code file, and the name of the function in LLVM we are trying to localize.
It uses Regex to exact match the name, it regex fails, we try to find the functio using string similarity (not exact matching).


it outputs 2 numbers per line spaced by a comma, the first number is the start line of the vuln, the second number is the last line of the vuln

each line represents a vulnerability
'''




string1 = '@"CWE23_Relative_Path_Traversal__char_connect_socket_fopen_01::bad"'

def cleanseFunctionName(funcName):
    funcName = re.sub('"', '', funcName)
    funcName = re.sub('@', '', funcName)
    funcName = re.sub('\(|\{', '', funcName)
    funcName = re.sub('^(_\w+?\d+)', '', funcName)
    functionNamesSplitted = re.split('::', funcName)
    return functionNamesSplitted



def findFunctionNameUsingRegex(ListOfFuncNames, fileContents, outputLines):
    #for lineNum, lineCont in enumerate(fileContents):
        for funcName in ListOfFuncNames:

            #commentCharacters = ['/', '#']
            #flag=False
            #for comment in commentCharacters:
            #    lineModified = re.sub('[\s\t]', '' , lineCont)
            #    if(  lineModified and comment == lineModified[0]):
            #        flag=True
            #if(flag):
            #    continue

            regexScript = r'\b' + funcName + r'\b'+'\([\s\S]*?.*?\)?[\s\S]*?\{'
            
            matches = re.search(regexScript, fileContents, re.MULTILINE)
            #print(regexScript)
            while(not matches and funcName):
                funcName = funcName[:-1]
                if(not funcName):
                    break
                regexScript = r'(\b' + funcName + r'\b'+'\([\s\S]*?.*?\)?[\s\S]*?)\{'
                #print(regexScript)
                matches = re.search(regexScript, fileContents, re.MULTILINE)
            if(matches):
                print(matches.group(0))
                
                #outputLines.append(matches.span())
                
                startOfFunction = matches.start()
                
                while fileContents[startOfFunction] != '\n':
                    startOfFunction-=1
                stack = []
                for i, character in enumerate(fileContents[startOfFunction:len(fileContents)]):
                    if character == '{':
                        stack.append(character)
                    elif character =='}':
                        stack.pop()
                        if(not stack):
                            endOfFunction = startOfFunction+ i
                            break
                outputLines.append((startOfFunction, endOfFunction+1))
                #print(fileContents[startOfFunction: endOfFunction+1])
                #print(startOfFunction, endOfFunction)
                #print('\n\n\n\n')
                

                
        return outputLines


def findFunctionNameUsingSimilarity (ListOfFuncNames, fileContents, outputLines):
   
    for funcName in ListOfFuncNames:
        counter = 0
        for i in range (0, len(fileContents)-len(funcName)):
            if(counter > 0):
                counter -= 1
                continue
            if(levenshtein_similarity(fileContents[i:i+len(funcName)], funcName) > 0.99):
                
                startOfFunction = i
                matches = re.search('[a-zA-Z0-9 _]*?\([\s\S]*?\)', fileContents[i: len(fileContents)], re.MULTILINE)
                if(matches):
                    #print(i)
                    counter = len(funcName)
                    endOfFunction = matches.span()[1] + startOfFunction
                    outputLines.append((startOfFunction, endOfFunction))
                    #print(fileContents[startOfFunction: endOfFunction])
                    #print((startOfFunction, endOfFunction))
    return outputLines







#CALL THIS FUNCTION ONLY
def getMatchingLines(filePath, functionLLVM):
    f = open(filePath, 'r')
    contents = f.read()
    f.close()
    functionNamesSplitted = cleanseFunctionName(functionLLVM)

    outputLines = []
    outputLines = findFunctionNameUsingRegex(functionNamesSplitted, contents, outputLines)
    #print(outputLines)

    
    if(not outputLines):
        print(f"\nExact Matching for Function name in source code Failed, Trying Similarity Matching...\n")
        #perform similarity matching
        outputLines = findFunctionNameUsingSimilarity(functionNamesSplitted, contents, outputLines)
    if(not outputLines):
        return outputLines, None

    FolderPath = os.path.split(filePath)[0]
    filename= os.path.split(filePath)[1]

    # with open(textFilePath, 'w', encoding='utf-8') as f:
    #     f.write('\n'.join(outputLines))
    LocalizerReport = {filename : outputLines}
    f = open(filePath, 'r')
    contents = f.read()
    f.close()
    LocalizerReport['filecontent'] = contents
   
    
    return outputLines, LocalizerReport


'''
filePath = "UserSRC.cpp"
functionInLLVM = '@"CWE23_Relative_Path_Traversal__char_connect_socket_fopen_01::bad"'
outputLines = getMatchingLines(filePath, functionInLLVM)
'''


