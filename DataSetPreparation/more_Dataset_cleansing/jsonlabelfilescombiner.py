import json
import re
import os
import shutil
import time
import sys
import glob

'''
    This script is called inside the "irfilescombiner.ps1" script, no need to run this script standalone.

    takes one argument only which is the path to the root of the dataset containing the "OneBinary" and "MultiBinaries" folders

    it is made to handle the output.json of the multibinary dataset.

    it goes into each output.json, splits it into multiple json files named with the corresponding llvm files which contains said vulnerabilities.

    if the llvm file is safe, it just makes a json file as the same name as the ll file, containing [{safe: True}]
'''






rootPathToBigDataset = str(sys.argv[1])

rootPathToOneBinary = rootPathToBigDataset+"/OneBinary"
rootPathToMultiBinaryy = rootPathToBigDataset+"/MultiBinaries"

pathToJsonLabelFiles = rootPathToBigDataset+'/labeljsonfiles'

if(not (os.path.isdir(pathToJsonLabelFiles))):
    os.mkdir(pathToJsonLabelFiles)




'''
    FIRST, the One Binary
'''

'''
testcasesfolders = os.listdir(rootPathToOneBinary)
for testcasefolder in testcasesfolders:
    executable = ''
    availableFiles = os.listdir(rootPathToOneBinary+'/'+testcasefolder)
    for exe in availableFiles:
        if exe[-5:len(exe)] != '.json' and exe != 'llvmout' and exe[-4: len(exe)] != '.txt':    #ignore any .txt and json and the folder llvmout
            executable = exe

    outputjson_src = rootPathToOneBinary+f'/{testcasefolder}'+'/output.json'
    reportjson_src = rootPathToOneBinary+f'/{testcasefolder}'+'/report.json'
    outputjson_dst = pathToJsonLabelFiles+f'/{executable}.json'

    if(os.path.exists(outputjson_src)):
        os.rename(outputjson_src, outputjson_dst)
    elif(os.path.exists(reportjson_src)):
        os.rename(reportjson_src, outputjson_dst)
    else:
        print("no report found")
        continue

'''


'''
    SECOND OF ALL, the multibinaries

'''


testcasesfolders = os.listdir(rootPathToMultiBinaryy)
for testcasefolder in testcasesfolders:
    executable = []
    availableFiles = os.listdir(rootPathToMultiBinaryy+'/'+testcasefolder)
    for exe in availableFiles:
        if exe[-5:len(exe)] != '.json' and exe != 'llvmout' and exe[-4: len(exe)] != '.txt':    #ignore any .txt and json and the folder llvmout
            executable.append(exe)

    
    outputjson_src = rootPathToMultiBinaryy+f'/{testcasefolder}'+'/output.json'
    reportjson_src = rootPathToMultiBinaryy+f'/{testcasefolder}'+'/report.json'
    outputjson_dst = pathToJsonLabelFiles+f'/{executable}.json'
    llvmoutfolder = rootPathToMultiBinaryy+f'/{testcasefolder}/llvmout'


   
    #if "output.json" in glob.glob(rootPathToMultiBinaryy+f'/{testcasefolder}/*.json'):


    if(os.path.isfile(outputjson_src)):
        f = open(outputjson_src)
        outputjson = json.load(f)
        arr_of_unique_file_names = set()
        lls = os.listdir(llvmoutfolder)
        ll_names_in_label = []
        for f in lls:
            if (f[-3: len(f)] == '.ll'):
                ll_names_in_label.append(f[0:-3])
        #print(ll_names_in_label)
        num_binary=0
        num_procedures = 0

        arrDict = [dict()]

        for i,elm in enumerate(outputjson):
            if('whichbinary' in elm.keys()):
                
                jsonobj = json.dumps(elm)
                if(os.path.isfile(pathToJsonLabelFiles+"/"+elm['whichbinary']+".json")):
                    j = open(pathToJsonLabelFiles+"/"+elm['whichbinary'][0:-3]+".json")
                    existingjson = json.load(j)
                    j.close()
                    if(type(existingjson) == list):
                        existingjson.append(elm)
                        outfile = open(pathToJsonLabelFiles+"/"+elm['whichbinary'][0:-3]+".json", "w")
                        outfile.write(existingjson)
                        outfile.close()
                    else:
                        print("\n\n\n\n\nUNKNOWN ERROR: the json we are trying to update is not of type LIST, path: "+pathToJsonLabelFiles+"/"+elm['whichbinary'][0:-3]+".json"+": \n\n\n\n\n")
                    
                else:
                    jsonobj = json.dumps([elm])
                    outfile = open(pathToJsonLabelFiles+"/"+elm['whichbinary'][0:-3]+".json", "w")
                    outfile.write(jsonobj)
                    outfile.close()


                num_binary = num_binary+1
                
                

            elif('safe' in elm.keys()):
                for llname in ll_names_in_label:
                    jsonobj = json.dumps(outputjson)
                    outfile = open(pathToJsonLabelFiles+f"/{llname}.json", "w")
                    outfile.write(jsonobj)
                    outfile.close()

            else:
                print("Missing the field 'whichbinary' in the json file at the "+str(i)+"th element in: "+outputjson_src+"\n")
            if('Procedure' in elm.keys()):
                num_procedures = num_procedures+1
        #print("num proc " + str(num_procedures))
        #print("num Bina " + str(num_binary))
        #print(outputjson)

    elif(os.path.exists(reportjson_src)):
        print(f"\nOutput.json NOT FOUND IN PATH : {outputjson_src}\n")
        #should do another iteration
        #os.rename(reportjson_src, outputjson_src)
    

    
    else:
        print("\n\n\nno report.json nor output.json found\n\n\n")
        continue


