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
    classAndLocationReport= {}


    llvm_user_folder = os.path.split(llvm_user_file)[0]
    

    print('enter')

    #------------------ Input Classification from previous module
    
    os.chdir("../../")
    print('here')

    with open (clf_path, 'r') as f:
        content = f.readlines()
    classes = [re.sub('\n', '', i) for i in content]
    print(classes)

    for clss in classes:

        os.chdir(os.path.dirname(os.path.abspath(__file__)))
        print('read classification')

    

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

        for folder in tqdm(os.listdir(vuln_codes_path)):
            if(not re.findall (clss, folder)):               #skip CVEs we are not finding now
                continue

            # make dictionary for the folder with its name as the key 
            vulnerable_code[folder]= dict()
            
            for file in tqdm(os.listdir(vuln_codes_path+folder+'/jsons')):
                if file.endswith(".json"):
                    with open( vuln_codes_path+folder+'/jsons/'+file, 'r' ) as f:
                        vulnerable_code[folder].update(json.load(f)) 




        # ----------------- Matching the user code with the vulnerable codes
        def check_function_vulnerable(threshold,score1,score2,score3):
            return score1 > threshold and score2 > threshold and score3 > threshold


        # -------- String Matchers 
        #applying KNN but with similarity measures, we take the top 3 scores in all similarity measures, if those top 3 passed the threshold, we do the ultimate test, MOSS.
        #K here equals 3

        threshold = 0.4
        k = 2
        tightness = 0.8

        #this is a dictionary of key: 
        #                       dictionary of key: vulnerability family 
        #                           and its value: dictionary of key: vulnerable function (which is in our database) and 
        #                                                             code_scores for this vulnerable function (and the User Function)
        Vulnerable_Matches = {}
        print(vulnerable_code.keys())
        for vuln_family, vuln_funcs in vulnerable_code.items():
            
            reprFolderClass = re.findall('\d+', vuln_family)             #returns 23 from the folder name llfiles_23
            
            if(not (reprFolderClass[0] in [clss])):                     #skip this CVE class
                continue

        
            
            for key, fn in tqdm(user_code.items()):
                
                code_scores = {}

                for vuln_head, vuln_func in vuln_funcs.items():   
                    if((abs(len(fn) - len(vuln_func)) / max(len(fn), len(vuln_func)) > tightness)):
                        continue 
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
                    

        
        print('String matching finished')


        # -------- MOSS
        #Candidate_Functions is a list of tuples, each containing a possible Match. A Match means User Function matching a Vulnerable Function
        Candidate_Functions = []
        MatchPairs = []

        try:

            

            for PairHeads, PairFuncs in Vulnerable_Matches.items():
                UserFuncHead = PairHeads[0]
                VulnFuncHead = PairHeads[1]

                UserFunc = PairFuncs[0]
                VulnFunc = PairFuncs[1]

                #sometimes normalizing behaves good, sometimes bad.
                VulnFuncNorm = normalizer.NormalizeLLVM(VulnFunc)
                UserFuncNorm = normalizer.NormalizeLLVM(UserFunc)

                #MOSS Metrics (defined in Winnowing.py), Parameters passed: k=20, ws = 10, P=10
                try:
                    MOSS_Acc_metric1, MOSS_Acc_metric2, hits, misses1, misses2 = Winnowing.diff(UserFuncNorm, VulnFuncNorm, K= 20, WindowSize= 10, P= 10)
                except Exception as e:
                    print(f'\n\n=====================================\n{e}\n========================================\n\n\n')
                    print(f"{hits}        {misses1}            {misses2}")

                #MOSS Thresholds, 0.7 for Metric1, 0.7 for Metric2, those thresholds are highly dependent on the vulnerability type unfortunately.
                if(MOSS_Acc_metric1>0.5 or MOSS_Acc_metric2>0.5):
                    found_vuln = True
                    #Candidate_Functions containg a tuple of (original function head, vulnerable function name (which is stored with us))
                    Candidate_Functions.append((re.findall('(@.*)\(', UserFuncHead)[0]  ,  re.findall('(@.*)\(', VulnFuncHead)[0]))
            

            print('MOSS finished')
            #------------------ Graph Matching

            
            try:

                SCRIPT_ROOT_folder = str(os.path.split(os.path.realpath(__file__))[0])

                #Path to the pairs folder in this directory
                absPathtoPairsFolder = os.path.join(SCRIPT_ROOT_folder, 'pairs').replace("\\", "/")
                absPathtoPairsFolder = list(absPathtoPairsFolder)
                absPathtoPairsFolder[0] = absPathtoPairsFolder[0].upper()
                absPathtoPairsFolder = ''.join(absPathtoPairsFolder)

                #run CFG script on all subfolders inside pairs folder
                #run(["python",CFG_scriptPath, "0", absPathtoPairsFolder+'/ourVulnCodes' , absPathtoPairsFolder])
                run(["python",CFG_scriptPath, "1", llvm_user_folder , os.path.split(llvm_user_folder)[0], 'UserCode'])

                #Prepare graphs for Vulnerable code, precompute them and store them in a list
                #Vulnerable code (we are storing) is put inside a folder called ourVulnCodes, and the corresponding CFGs is inside a folder called ourVulnCodes_subgraphs/VulnerableCode_subgraphs
                PairsFolder = os.listdir('pairs')


                #List containing graphs of each precomputed Vulnerable Code
                ourGraphs = []

                for llfileCFGFolder in PairsFolder:
                    if (llfileCFGFolder[0:7] != 'llfiles' or llfileCFGFolder.endswith('.pkl')):
                        continue

                    if(not re.findall(clss, llfileCFGFolder)):
                        continue

                    subFamilyFolders = os.listdir(os.path.join(absPathtoPairsFolder, llfileCFGFolder))
                    if (not (os.path.isfile(f'{absPathtoPairsFolder}/{llfileCFGFolder}.pkl'))):
                        for subFamFolder in tqdm(subFamilyFolders, desc='Constructing subgraphs of representatives, this is done only one time'):
                            allJsons = os.listdir(f'{absPathtoPairsFolder}/{llfileCFGFolder}/{subFamFolder}')
                        
                            for jsonFile in allJsons:
                                fulljsonFilePath = f'{absPathtoPairsFolder}/{llfileCFGFolder}/{subFamFolder}/{jsonFile}'
                                newGraph = graph.Graph()
                                newGraph.readGraphFromJSON(fulljsonFilePath)
                                ourGraphs.append(newGraph)
                        with open(f'{absPathtoPairsFolder}/{llfileCFGFolder}.pkl', 'wb') as f:
                            pickle.dump(ourGraphs, f)
                    else:
                        with open(f'{absPathtoPairsFolder}/{llfileCFGFolder}.pkl', 'rb') as f:
                            ourGraphs = pickle.load(f)


                '''
                we are trying to find the json file containing the name of the candidate functions (we will not compute CFG of EVERY possible function, rather just the candidate functions),
                if we found a json of a candidate function, we compute its graph and perform the matching.

                candidate functions are the functions that passed MOSS
                '''
                UserCodeSubgraphsFolder = os.path.join(os.path.split(llvm_user_folder)[0] ,"UserCode_subgraphs", "UserCode_subgraphs")

                final_Matched_Functions = []
                VulnFunctionNames = [i[1] for i in Candidate_Functions]

                allFiles = os.listdir(UserCodeSubgraphsFolder)
                i = -1
                for jsonfile in tqdm(allFiles, desc='graph matching with each vulnerable code'):
                    i += 1
                    fulljsonFilePath = os.path.join(UserCodeSubgraphsFolder, jsonfile)
                    
                    if(pathlib.Path(jsonfile).suffix != ".json"):
                        continue
                    with open(fulljsonFilePath) as f:
                        jsonDict = json.load(f)
                    functionName = jsonDict["function_name"]
                    
                    
                    

                    
                    
                    if(functionName in [i[0] for i in Candidate_Functions]):              #check if the function name is inside Candidate Functions
                        #Construct User Graph and Perform Matching
                        UserCodeGraph = graph.Graph()
                        UserCodeGraph.readGraphFromJSON(fulljsonFilePath)
                        MatchPairs = graph.matchGraphWithListOfGraphs(UserCodeGraph , ourGraphs, Names=VulnFunctionNames,otherWayAround=False, timeLimit=1)
                        
                        #MatchPairs is a list of Tuples, each Tuples contains the UserFunction Name and the Function Name stored in our Database
                        if(MatchPairs):
                            final_Matched_Functions.append(MatchPairs)
                            print("Caught Something !")
            except Exception as e:
                print(f'\n\n=====================================\n{e}\n========================================\n\n\n')
                    

            print('graph matching finished')
            #------------------ Clean up
            # files = os.listdir('./')
            # files = [ fi for fi in files if fi.endswith(".json")]
            # for f in files:
            #     os.remove(f)



        except Exception as e:
            print(f'\n\n=====================================\n{e}\n========================================\n\n\n')

            #------------------ Highlighter
            # the GUI should read the file span_{fileNmae}.txt written inside 'output' folder <br> to highlight the exact span of the function in the source code
            # the source code should be inside 'output/source/'
            #if the input file srcfile.cpp, then the span file will be called span_srcfile.cpp.txt
        
        # make the cwd be the main directory
        os.chdir("../../")

        srcFiles = os.listdir(src_path)
        
    
        if(MatchPairs and Candidate_Functions and final_Matched_Functions):
            for src in srcFiles:
                if(src.endswith('.txt') or os.path.isdir(src)):
                    continue
                srcFilePath = os.path.join(src_path, src)
                for elm in final_Matched_Functions[0]:
                    for e in elm:
                        func = e[0]
                        print(func)
                        _,fileReport = highlighter.getMatchingLines(srcFilePath, func)
                        LocalizerReport.update(fileReport)
            
            classAndLocationReport[clss] = LocalizerReport
        else:
            classAndLocationReport[clss] = 'not localized'


    print('report finished\n\n\n')
    print(classAndLocationReport)
    with open(output_path, 'w') as f:
        json.dump(classAndLocationReport, f)
    