from Localizer.Common.matchers import levenshtein_similarity
import re
import sys
import os
from time import time, sleep

'''
    Hello,
    This script takes the path of the source code file, and the name of the function in LLVM we are trying to localize.
    It uses Regex to exact match the name, if regex fails, we try to find the function using string similarity (not exact matching).


    it outputs 2 numbers per line spaced by a comma, the first number is the start line of the vuln, the second number is the last line of the vuln
    basically it outputs the spand of the whole function's implementation

    LIMITATIONS:
    Highlighter only works for C, CPP and other scope-dependent languages. Python and other indentation-based languages are not yet supported

    This is a helper script for the Localizer module

    Enjoy :)
'''



# Just for the sake of testing :)
string1 = '@"CWE23_Relative_Path_Traversal__char_connect_socket_fopen_01::bad"'

def cleanseFunctionName(funcName):
    '''
        This function takes the function Name passed by the localizer,
        the function name is in LLVM format, meaning it suffers from extra characters and needs to be cleansed
        refer to the example in the static string just above this function
    '''
    funcName = re.sub('"', '', funcName)                    # Remove double quotes
    funcName = re.sub('@', '', funcName)                    # Remove the @
    funcName = re.sub('\(|\{', '', funcName)                # Remove any remnants of parenthesis if any
    funcName = re.sub('^(_\w+?\d+)', '', funcName)          # Remove the compiler-generated dummy characters prepended to the function name
    functionNamesSplitted = re.split('::', funcName)        # Inhertiance based functions are splitted into Class Name (or Namespace Name), and the Function name
    return functionNamesSplitted



def findFunctionNameUsingRegex(ListOfFuncNames, fileContents, outputLines):
        '''
            This function takes a list of Function names to be searched for, the file contents and previous output span if any to append its output to
            it prepares the regex script by taking the raw function name then appending and prepending it with word boundaries
            then searching for the first '{' without any characters between the last character in the function name and the '{'

            then it contiuously tracks down the opening and closing '{' until the closing '}' that belongs to this function we are trying to localize
        '''
        for funcName in ListOfFuncNames:

            regexScript = r'\b' + funcName + r'\b'+'\([\s\S]*?.*?\)?[\s\S]*?\{'
            
            matches = re.search(regexScript, fileContents, re.MULTILINE)

            while(not matches and funcName):
                funcName = funcName[:-1]
                if(not funcName):
                    break
                regexScript = r'(\b' + funcName + r'\b'+'\([\s\S]*?.*?\)?[\s\S]*?)\{'
                matches = re.search(regexScript, fileContents, re.MULTILINE)

            if(matches):
                print(matches.group(0))                
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
                
        return outputLines


def findFunctionNameUsingSimilarity (ListOfFuncNames, fileContents, outputLines):
    '''
        This function finds the function using similarity matching rather than regex exact matching
        Here, we Use Levenstein matching algorithm as our distance function
    '''
    for funcName in ListOfFuncNames:
        counter = 0
        for i in range (0, len(fileContents)-len(funcName)):
            if(counter > 0):
                counter -= 1
                continue

            if(levenshtein_similarity(fileContents[i:i+len(funcName)], funcName) > 0.99):         #You can tweak the threshold as you like
                
                startOfFunction = i
                matches = re.search('[a-zA-Z0-9 _]*?\([\s\S]*?\)', fileContents[i: len(fileContents)], re.MULTILINE)
                if(matches):
                    counter = len(funcName)
                    endOfFunction = matches.span()[1] + startOfFunction
                    outputLines.append((startOfFunction, endOfFunction))
                   
    return outputLines







#CALL THIS FUNCTION ONLY
def getMatchingLines(filePath, functionLLVM):
    '''
        The main function in this script
        It is called in the Localizer module
        it takes the file path, and the name of the function in LLVM format
        it returns a dictionary of filename: spans of lines
    '''
    f = open(filePath, 'r')
    print(filePath)
    contents = f.read()
    f.close()
    functionNamesSplitted = cleanseFunctionName(functionLLVM)

    outputLines = []
    outputLines = findFunctionNameUsingRegex(functionNamesSplitted, contents, outputLines)

    
    if(not outputLines):
        print(f"\nExact Matching for Function name in source code Failed, Trying Similarity Matching...\n")
        #perform similarity matching
        outputLines = findFunctionNameUsingSimilarity(functionNamesSplitted, contents, outputLines)
    if(not outputLines):
        return outputLines, None

    FolderPath = os.path.split(filePath)[0]
    filename= os.path.split(filePath)[1]

    
    LocalizerReport = {filename : outputLines}
    f = open(filePath, 'r')
    contents = f.read()
    f.close()
    LocalizerReport['filecontent'] = contents
    
    return outputLines, LocalizerReport
