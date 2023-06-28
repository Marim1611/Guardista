import os, sys, pickle, re
from subprocess import run
import Localizer.Common.localizer as Localizer

RETDEC_PATH = "D:/ClassWork/GP/RetDec/bin"
SCRIPT_ROOT_PATH = str(os.getcwd())
OUTPUT_PATH = SCRIPT_ROOT_PATH+f"/output"
if (not os.path.exists(OUTPUT_PATH)): os.makedirs(OUTPUT_PATH)

'''
    The main pipeline for the project.
'''

def pipeline(userFilePath,userFile):

    # ------------------- 1. Binary Preprocessing ------------------- #
    # TODO: Add the binary preprocessing script here. 
    '''
    input: user Folder
    output: output/user.ll
    '''
    absPathtoPreprocessingScript = str(os.path.abspath("BinaryPreprocesor/crosscmp/scripty.ps1")).replace("\\", "/")
    absPathtoPreprocessingScript = list(absPathtoPreprocessingScript)
    absPathtoPreprocessingScript[0] = absPathtoPreprocessingScript[0].upper()
    absPathtoPreprocessingScript = ''.join(absPathtoPreprocessingScript)

    absPathToUserFile = (str(os.getcwd())+userFilePath).replace("\\", "/")
    absPathToUserFile = list(absPathToUserFile)
    absPathToUserFile[0] = absPathToUserFile[0].upper()
    absPathToUserFile = ''.join(absPathToUserFile)

    absPathToActivationScript= str(os.path.abspath("BinaryPreprocesor/crosscmp/GP_Env/bin/Activate.ps1")).replace("\\", "/")
    absPathToActivationScript = list(absPathToActivationScript)
    absPathToActivationScript[0] = absPathToActivationScript[0].upper()
    absPathToActivationScript = ''.join(absPathToActivationScript)

    absPathtoRetDec= str(os.path.abspath(RETDEC_PATH)).replace("\\", "/")
    absPathtoRetDec = list(absPathtoRetDec)
    absPathtoRetDec[0] = absPathtoRetDec[0].upper()
    absPathtoRetDec = ''.join(absPathtoRetDec)


    CompiledFlag = False
    cntExecutables=0
    if(os.path.isdir(absPathToUserFile)):                                           #if the input is a folder not a file
        for file in os.listdir(absPathToUserFile):
            if(file.endswith('.exe')):
                cntExecutables += 1
                CompiledFlag = True
                absPathToUserFile_Inputed = absPathToUserFile+f"/{file}"           #We are taking only the last exe file
    else: 
        absPathToUserFile_Inputed = absPathToUserFile
        if(absPathToUserFile_Inputed.endswith('.exe')): CompiledFlag= True
           

    if(cntExecutables>1):
        with open(f'{OUTPUT_PATH}/logs.txt', 'w') as f:
            f.write('tell him we only accept either 1 executable or many source files only.')
        #log something to the user to tell him we only accept either 1 executable or many source files only.

    print(absPathtoPreprocessingScript)
    print(absPathToUserFile_Inputed)
    print(OUTPUT_PATH)
    print(absPathtoRetDec)
    print(CompiledFlag)
    with open(f'{OUTPUT_PATH}/status.txt', 'w') as f:
        if(CompiledFlag): f.write('compiled')
        else: f.write('submitted')
    run(["powershell.exe", absPathtoPreprocessingScript, absPathToUserFile_Inputed, OUTPUT_PATH ,absPathtoRetDec, "true" if CompiledFlag else 'false']) 
    # ----------------------------------------------------------------------------------------

    # ------------------- 2. IR to CFG ------------------- #
    '''
    input: output/source/output/user.ll
    output: output/userCFG/nodes.json 
            output/userCFG/edges.csv
    '''

    absPathtoCFGScript = str(os.path.abspath("IrToCFGs/cfg_infer.py")).replace("\\", "/")
    absPathtoCFGScript = list(absPathtoCFGScript)
    absPathtoCFGScript[0] = absPathtoCFGScript[0].upper()
    absPathtoCFGScript = ''.join(absPathtoCFGScript)

    absPathtoLLFile = str(os.path.abspath("output/LLfiles/UserCode.ll"))
    absPathtoLLFile = list(absPathtoLLFile)
    absPathtoLLFile[0] = absPathtoLLFile[0].upper()
    absPathtoLLFile = ''.join(absPathtoLLFile)

    absPathtoCFGOutput = str(os.path.abspath("output/"))
    absPathtoCFGOutput = list(absPathtoCFGOutput)
    absPathtoCFGOutput[0] = absPathtoCFGOutput[0].upper()
    absPathtoCFGOutput = ''.join(absPathtoCFGOutput)

    run(["python",absPathtoCFGScript,absPathtoLLFile,absPathtoCFGOutput])

    # ----------------------------------------------------------------------------------------
    # ------------------- 3. Features Extraction ------------------- #
    # ------------------- 3.1. Statistical Features ------------------- #
    '''
    input:  output/userCFG/nodes.json 
    output: ---
    '''

    # absPathtoStatFeaturesScript = str(os.path.abspath("4-Features_Extraction/statistical_features.py")).replace("\\", "/")
    # absPathtoStatFeaturesScript = list(absPathtoStatFeaturesScript)
    # absPathtoStatFeaturesScript[0] = absPathtoStatFeaturesScript[0].upper()
    # absPathtoStatFeaturesScript = ''.join(absPathtoStatFeaturesScript)

    #run(["python",absPathtoStatFeaturesScript, OUTPUT_PATH, CVE?!?!?])
    X_test = []

    # ----------------------------------------------------------------------------------------

    # ------------------- 4. Classification ------------------- #
    '''
    input: output/model.pkl, X_test
    output: output/classification.txt
    '''

    # models=[]
    # for file in os.listdir("models"):
    #     with open("models/"+file, 'rb') as f:
    #         models.append(pickle.load(f))
    
    # with open('output/classification.txt', 'w') as f:
    #     for model in models:
    #         y_pred = model.predict(X_test)
    #         if y_pred!= 'safe':
    #             cve_id= re.search(r"\d+", y_pred).group(0)
    #             f.write(cve_id)

    # # check if the classification.txt file is empty, then user code is safe
    # if os.stat("output/classification.txt").st_size == 0:
    #     print("No vulnerabilities found")
    #     with open(f'{OUTPUT_PATH}/logs.txt', 'a') as f:
    #         f.write('no Vulnerabilities found')
        #sys.exit()                                                     SHOULD WE EXIT ?!?!?

    # ----------------------------------------------------------------------------------------

    # ------------------- 5. Localizer ------------------- #
    '''
    input: output/UserCode.ll
           output/classification.txt
           output/source
    output: output/localization.txt
    '''

    # Localizer.main_localizer('true' if CompiledFlag else 'false',\
    #                          llvm_user_file='output/UserCode.ll',\
    #                         clf_path='output/classification.txt',\
    #                         src_path=f'{OUTPUT_PATH}/source',\
    #                         output_path='output/localization.txt') #not used haleyan
    


pipeline(userFilePath='/tests/unitTest/out7.exe',userFile='/tests/testSrc/CWE126_Buffer_Overread__wchar_t_declare_loop_05.c')