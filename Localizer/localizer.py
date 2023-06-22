import CodePreprocessing as preprocessing
import json
import re
import os
import highlighter
import matchers as matcher
import LLNormalizer as normalizer
import Winnowing
import heapq
import pickle
from tqdm import tqdm
import time
import multiprocessing
import graph
from subprocess import run
import pathlib


# ----------------- User functions  --------------------
preprocessing.functions_preprocessing( llvm_file='pairs/UserCode/UserCode.ll', json_file='UserCode' )
with open( 'UserCode.json', 'r' ) as f:
    user_code = json.load(f) 
    user_code = dict(sorted(user_code.items(), key=lambda item: item[1]))


# ----------------- Vulnerable functions ------------------
# ----------------- Reading all vulnerable codes from the LLVM files

vuln_codes_path= 'pairs/ourVulnCodes/'

# loop on each folder in the path 
for folder in os.listdir(vuln_codes_path):

    if not os.path.exists(vuln_codes_path+folder+'/jsons'):
        os.makedirs(vuln_codes_path+folder+'/jsons')

    # loop on each file in the folder
    for file in os.listdir(vuln_codes_path+folder):
        if file.endswith(".ll"):
            file_name= file.split('.')[0]
            preprocessing.functions_preprocessing( llvm_file=vuln_codes_path+folder+'/'+file, json_file=vuln_codes_path+folder+'/jsons/'+file_name )


# ----------------- Reading all vulnerable codes from the JSON files and save it in a dictionary
vulnerable_code= dict()

for folder in os.listdir(vuln_codes_path):

    # make dictionary for the folder with its name as the key 
    vulnerable_code[folder]= dict()
    
    for file in os.listdir(vuln_codes_path+folder+'/jsons'):
        if file.endswith(".json"):
            with open( vuln_codes_path+folder+'/jsons/'+file, 'r' ) as f:
                vulnerable_code[folder].update(json.load(f)) 


#------------------ Input Classification from previous module
with open ('../../temp/classification.txt', 'r') as f:
    content = f.read()
classes = re.split('\b', content)


# ----------------- Matching the user code with the vulnerable codes
def check_function_vulnerable(threshold,score1,score2,score3):
    return score1 > threshold and score2 > threshold and score3 > threshold


# -------- String Matchers 
#applying KNN but with similarity measures, we take the top 3 scores in all similarity measures, if those top 3 passed the threshold, we do the ultimate test, MOSS.
#K here equals 3

threshold = 0.7
k = 3
tightness = 0.75

#this is a dictionary of key: 
#                       dictionary of key: vulnerability family 
#                           and its value: dictionary of key: vulnerable function (which is in our database) and 
#                                                             code_scores for this vulnerable function (and the User Function)
Vulnerable_Matches = {}

for vuln_family, vuln_funcs in vulnerable_code.items():
    
    reprFolderClass = re.findall('\d+', vuln_family)             #returns 23 from the folder name llfiles_23
    if(not (reprFolderClass[0] in classes)):                     #skip this CVE class
        continue

    for key, fn in tqdm(user_code.items()):
        code_scores = {}

        for vuln_head, vuln_func in vuln_funcs.items():   
            if((abs(len(fn) - len(vuln_func)) / max(len(fn), len(vuln_func)) > tightness)):
                break 
            jaro_winkler=matcher.jaro_winkler_similarity(fn, vuln_func)
            levenshtein=matcher.levenshtein_similarity(fn, vuln_func)
            ratcliff_obershelp=matcher.ratcliff_obershelp_similarity(fn, vuln_func)
            trigram=matcher.trigram_similarity(fn, vuln_func)
            sorensen_dice=matcher.sorensen_dice_similarity(fn, vuln_func)
            jaccard_distance=matcher.jaccard_distance(fn, vuln_func)

            scores=[jaro_winkler,levenshtein,ratcliff_obershelp,trigram,sorensen_dice,jaccard_distance]
            scores.sort(reverse=True) 
            if(check_function_vulnerable(threshold, scores[0], scores[1], scores[2])):
                Vulnerable_Matches[(key, vuln_head)] = (fn, vuln_func)
                #print((key, vuln_head))
                break

            code_scores[key]=scores
            

with open('code_scores.pkl', 'wb') as f:
    pickle.dump(Vulnerable_Matches, f)


# -------- MOSS
#Candidate_Functions is a list of tuples, each containing a possible Match. A Match means User Function matching a Vulnerable Function
Candidate_Functions = []

with open('code_scores.pkl', 'rb') as f:
    Vulnerable_Matches = pickle.load(f)

for PairHeads, PairFuncs in Vulnerable_Matches.items():
    UserFuncHead = PairHeads[0]
    VulnFuncHead = PairHeads[1]

    UserFunc = PairFuncs[0]
    VulnFunc = PairFuncs[1]

    #sometimes normalizing behaves good, sometimes bad.
    VulnFuncNorm = normalizer.NormalizeLLVM(VulnFunc)
    UserFuncNorm = normalizer.NormalizeLLVM(UserFunc)

    #MOSS Metrics (defined in Winnowing.py), Parameters passed: k=20, ws = 10, P=10
    MOSS_Acc_metric1, MOSS_Acc_metric2, hits, misses1, misses2 = Winnowing.diff(UserFuncNorm, VulnFuncNorm, K= 20, WindowSize= 10, P= 10)

    #MOSS Thresholds, 0.7 for Metric1, 0.7 for Metric2, those thresholds are highly dependent on the vulnerability type unfortunately.
    if(MOSS_Acc_metric1>0.7 or MOSS_Acc_metric2>0.7):
        found_vuln = True
        #Candidate_Functions containg a tuple of (original function head, vulnerable function name (which is stored with us))
        Candidate_Functions.append((re.findall('(@.*)\(', UserFuncHead)[0]  ,  re.findall('(@.*)\(', VulnFuncHead)[0]))
   

#------------------ Graph Matching


#Path to generate_subgraphs.py
absPathtoCFGScript = str(os.path.abspath("../../IrToCFGs/generate_subgraphs.py")).replace("\\", "/")
absPathtoCFGScript = list(absPathtoCFGScript)
absPathtoCFGScript[0] = absPathtoCFGScript[0].upper()
absPathtoCFGScript = ''.join(absPathtoCFGScript)


#Path to the pairs folder in this directory
absPathtoPairsFolder = (str(os.getcwd())+"/pairs").replace("\\", "/")
absPathtoPairsFolder = list(absPathtoPairsFolder)
absPathtoPairsFolder[0] = absPathtoPairsFolder[0].upper()
absPathtoPairsFolder = ''.join(absPathtoPairsFolder)

#run CFG script on all subfolders inside pairs folder
run(["python",absPathtoCFGScript, "0", absPathtoPairsFolder+'/ourVulnCodes' , absPathtoPairsFolder])
run(["python",absPathtoCFGScript, "0", absPathtoPairsFolder+'/UserCode' , absPathtoPairsFolder])

#Prepare graphs for Vulnerable code, precompute them and store them in a list
#Vulnerable code (we are storing) is put inside a folder called ourVulnCodes, and the corresponding CFGs is inside a folder called ourVulnCodes_subgraphs/VulnerableCode_subgraphs
PairsFolder = os.listdir('pairs')


#List containing graphs of each precomputed Vulnerable Code
ourGraphs = []

for llfileCFGFolder in PairsFolder:
    if (llfileCFGFolder[0:7] != 'llfiles'):
        continue

    subFamilyFolders = os.listdir(f"pairs/{llfileCFGFolder}")
    for subFamFolder in subFamilyFolders:
        allJsons = os.listdir(f'pairs/{llfileCFGFolder}/{subFamFolder}')
        for jsonFile in allJsons:
            fulljsonFilePath = f'pairs/{llfileCFGFolder}/{subFamFolder}/{jsonFile}'
            newGraph = graph.Graph()
            newGraph.readGraphFromJSON(fulljsonFilePath)
            ourGraphs.append(newGraph)


'''
we are trying to find the json file containing the name of the candidate functions (we will not compute CFG of EVERY possible function, rather just the candidate functions),
if we found a json of a candidate function, we compute its graph and perform the matching.

candidate functions are the functions that passed MOSS
'''
UserCodeSubgraphsFolder = 'pairs' + "/UserCode_subgraphs/UserCode_subgraphs"

final_Matched_Functions = []
VulnFunctionNames = [i[1] for i in Candidate_Functions]

allFiles = os.listdir(UserCodeSubgraphsFolder)
for jsonfile in tqdm(allFiles):
    fulljsonFilePath = UserCodeSubgraphsFolder+'/'+jsonfile
    if(pathlib.Path(jsonfile).suffix != ".json"):
        continue
    with open(fulljsonFilePath) as f:
        jsonDict = json.load(f)
    functionName = jsonDict["function_name"].replace('\\', '')
    

    if(functionName in [i[0] for i in Candidate_Functions]):              #check if the function name is inside Candidate Functions
        #Construct User Graph and Perform Matching
        UserCodeGraph = graph.Graph()
        UserCodeGraph.readGraphFromJSON(fulljsonFilePath)
        MatchPairs = graph.matchGraphWithListOfGraphs(UserCodeGraph , ourGraphs, Names=VulnFunctionNames,otherWayAround=True, timeLimit=300)
        
        #MatchPairs is a list of Tuples, each Tuples contains the UserFunction Name and the Function Name stored in our Database
        if(MatchPairs):
            final_Matched_Functions.append(MatchPairs)


#------------------ Clean up
files = os.listdir('./')
files = [ fi for fi in files if fi.endswith(".json")]
for f in files:
    os.remove(f)


#------------------ Highlighter
# the GUI should read the file span.txt written inside 'temp' folder <br> to highlight the exact span of the function in the source code
# the source code should be inside 'temp/source/'

srcFiles = os.listdir("../../temp/source")
for src in srcFiles:
    currentPath = str(os.getcwd()).replace('\\', '/')
    currentPath = re.split(r"/" ,currentPath)[:-2]
    srcFilePath = currentPath+ ['temp','source',src]
    srcFilePath = '/'.join(srcFilePath)
    for func,_ in final_Matched_Functions:
        highlighter.getMatchingLines(srcFilePath, func)