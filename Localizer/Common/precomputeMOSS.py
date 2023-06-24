import Localizer.Common.CodePreprocessing as CodePreprocessing
import Localizer.Common.Winnowing as Winnowing
import os
from tqdm import tqdm
import json


'''
this script takes the representatives folder and iterates on each llfile and computes its MOSS signature
the output is a json that looks like this...



CVE23 : {
            CVE23_SF1 : "1231232132",
            CVE23_SF2 : "1232132132",
            CVE23_SF3 : "1321321323"
},

CVE36: {
            CVE36_SF1 : "1231232132",
            CVE36_SF2 : "1232132132",
            CVE36_SF3 : "1321321323"
}



just run it using python precomputeMOSS.py

this script assumes the representatives are put inside pairs/ourVulnCodes/



'''

pathToOurVulnCodes = 'pairs/OurVulnCodes'

# make cwd the path to the script
os.chdir(os.path.dirname(os.path.abspath(__file__)))
CVEFolders = os.listdir(pathToOurVulnCodes)

BigDict = dict()
for CVEFolder in CVEFolders:
    BigDict[CVEFolder] = dict()
    allFiles = os.listdir(pathToOurVulnCodes+'/'+CVEFolder)
    for LLfile in tqdm(allFiles):
        if not LLfile.endswith('.ll'):
            continue

        fileNameWithoutExtension = LLfile.split('.')[0]
        LLfilePath = pathToOurVulnCodes+'/'+CVEFolder+'/'+LLfile
        fnNames,fnBodies = CodePreprocessing.functions_preprocessing(LLfilePath, "", writeJson=False)
        for i in range(len(fnNames)):
            signature = Winnowing.Winnow(fnBodies[i], K=20, windowSize=10, p=10)
            BigDict[CVEFolder][fnNames[i]] = signature


#print(BigDict)

with open('signatures.json', 'w') as f:
    f.write(json.dumps( BigDict, indent=6, sort_keys=True ))




