import json,re,os,pickle,pathlib
from tqdm import tqdm
from subprocess import run
import Localizer.Common.CodePreprocessing as preprocessing
import Localizer.Common.highlighter as highlighter
import Localizer.Common.matchers as matcher
import Localizer.Common.LLNormalizer as normalizer
import Localizer.Common.Winnowing as Winnowing
import Localizer.Common.graph as graph


def main_localizer(compiledFlag, CFG_scriptPath,llvm_user_file,clf_path, src_path, output_path):
    if compiledFlag == "true":
        return
    LocalizerReport = {}

    print('enter')

    # ----------------- User functions  --------------------
    preprocessing.functions_preprocessing( llvm_file= llvm_user_file, json_file='UserCode' )
    with open( 'UserCode.json', 'r' ) as f:
        user_code = json.load(f) 
        user_code = dict(sorted(user_code.items(), key=lambda item: item[1]))
    
    # delete the json file
    os.remove('UserCode.json')

    os.chdir(os.path.dirname(os.path.abspath(__file__)))


    print('here')
    # # ----------------- Vulnerable functions ------------------
    # # ----------------- Reading all vulnerable codes from the LLVM files

    vuln_codes_path= 'pairs/ourVulnCodes/'

    # loop on each folder in the path 
    for folder in os.listdir(vuln_codes_path):

        if not os.path.exists(vuln_codes_path+folder+'/jsons'):
            os.makedirs(vuln_codes_path+folder+'/jsons')
        else:
            continue

        # loop on each file in the folder
        for file in tqdm(os.listdir(vuln_codes_path+folder)):
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
    
    os.chdir("../../")
    print('here')

    with open (clf_path, 'r') as f:
        content = f.read()
    classes = re.split('\b', content)

    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    print('read classification')


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
                    break

                code_scores[key]=scores
                

    with open('code_scores.pkl', 'wb') as f:
        pickle.dump(Vulnerable_Matches, f)
    
    print('String matching finished')


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
    

    print('MOSS finished')
    #------------------ Graph Matching


    SCRIPT_ROOT_folder = str(os.path.split(os.path.realpath(__file__))[0])

    #Path to the pairs folder in this directory
    absPathtoPairsFolder = os.path.join(SCRIPT_ROOT_folder, 'pairs').replace("\\", "/")
    absPathtoPairsFolder = list(absPathtoPairsFolder)
    absPathtoPairsFolder[0] = absPathtoPairsFolder[0].upper()
    absPathtoPairsFolder = ''.join(absPathtoPairsFolder)

    #run CFG script on all subfolders inside pairs folder
    run(["python",CFG_scriptPath, "0", absPathtoPairsFolder+'/ourVulnCodes' , absPathtoPairsFolder])
    run(["python",CFG_scriptPath, "0", absPathtoPairsFolder+'/UserCode' , absPathtoPairsFolder])

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

    print('graph matching finished')
    #------------------ Clean up
    files = os.listdir('./')
    files = [ fi for fi in files if fi.endswith(".json")]
    for f in files:
        os.remove(f)


    #------------------ Highlighter
    # the GUI should read the file span_{fileNmae}.txt written inside 'output' folder <br> to highlight the exact span of the function in the source code
    # the source code should be inside 'output/source/'
    #if the input file srcfile.cpp, then the span file will be called span_srcfile.cpp.txt

    # make the cwd be the main directory
    os.chdir("../../")

    srcFiles = os.listdir(src_path)
   
    for src in srcFiles:
        srcFilePath = os.path.join(src_path, src)
        for func,_ in final_Matched_Functions:
            _,fileReport = highlighter.getMatchingLines(srcFilePath, func)
            LocalizerReport.update(fileReport)
    
    print('report finished')
    with open(output_path, 'w') as f:
        json.dump(LocalizerReport, f)
    