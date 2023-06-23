import os, sys, pickle, re
from subprocess import run
import Localizer.Common.localizer as Localizer

'''
    The main pipeline for the project.
'''

def pipeline(userFilePath,userFile):

    # ------------------- 1. Binary Preprocessing ------------------- #
    # TODO: Add the binary preprocessing script here. 
    '''
    input: user file
    output: output/user.ll
    '''
    # absPathtoPreprocessingScript = str(os.path.abspath("BinaryPreprocesor/crosscmp/scripty.ps1")).replace("\\", "/")
    # absPathtoPreprocessingScript = list(absPathtoPreprocessingScript)
    # absPathtoPreprocessingScript[0] = absPathtoPreprocessingScript[0].upper()
    # absPathtoPreprocessingScript = ''.join(absPathtoPreprocessingScript)

    # absPathToUserFile = (str(os.getcwd())+userFilePath).replace("\\", "/")
    # absPathToUserFile = list(absPathToUserFile)
    # absPathToUserFile[0] = absPathToUserFile[0].upper()
    # absPathToUserFile = ''.join(absPathToUserFile)

    # run(["powershell.exe", absPathtoPreprocessingScript, absPathToUserFile]) 
    # error here: ./GP_Env/bin/Activate.ps1 : The term './GP_Env/bin/Activate.ps1' is not recognized as the name of a cmdlet 

    # ------------------- 2. IR to CFG ------------------- #
    '''
    input: output/user.ll
    output: output/userCFG/nodes.json 
            output/userCFG/edges.csv
    '''

    # absPathtoCFGScript = str(os.path.abspath("IrToCFGs/cfg_main.py")).replace("\\", "/")
    # absPathtoCFGScript = list(absPathtoCFGScript)
    # absPathtoCFGScript[0] = absPathtoCFGScript[0].upper()
    # absPathtoCFGScript = ''.join(absPathtoCFGScript)

    # run(["python",absPathtoCFGScript])


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

    # run(["python",absPathtoStatFeaturesScript])
    X_test = []


    # ------------------- 4. Classification ------------------- #
    '''
    input: output/model.pkl, X_test
    output: output/classification.txt
    '''

    # models=[]
    # with open("output/model.pkl", 'rb') as f:
    #     models.append(pickle.load(f))
    
    # with open('output/classification.txt', 'w') as f:
    #     for model in models:
    #         y_pred = model.predict(X_test)
    #         if y_pred!= 'safe':
    #             cve_id= re.search(r"\d+", y_pred).group(0)
    #             f.write(cve_id)

    # # check if the classification.txt file is empty, then user code is safe
    # if os.stat("output/classification.txt").st_size == 0:
    #     print("No vulnerabilities found")
    #     sys.exit()


    # ------------------- 5. Localizer ------------------- #
    '''
    input: output/UserCode.ll
           output/classification.txt
           output/source
    output: output/localization.txt
    '''

    # Localizer.main_localizer(llvm_user_file='output/UserCode.ll',\
    #                         clf_path='output/classification.txt',\
    #                         src_path=user_file,\
    #                         output_path='output/localization.txt') #not used haleyan
    


pipeline(userFilePath='output/source',userFile='output/source/UserSRC.cpp')