import os, sys, pickle, re, json
from subprocess import run
import Localizer.Common.localizer as Localizer
import time
import pandas as pd


userFilePath = sys.argv[1]
userFile = sys.argv[2]



RETDEC_PATH = r"D:/ClassWork/GP/RetDec/bin".replace('\\', '/')

SCRIPT_ROOT_PATH = str(os.path.split(os.path.realpath(__file__))[0])
OUTPUT_PATH = sys.argv[3]
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

    with open(f'{OUTPUT_PATH}/status.txt', 'w') as f:
        f.write('submitted ')

    absPathtoPreprocessingScript = str(os.path.join(SCRIPT_ROOT_PATH ,"BinaryPreprocesor/crosscmp/scripty.ps1")).replace("\\", "/")
    absPathtoPreprocessingScript = list(absPathtoPreprocessingScript)
    absPathtoPreprocessingScript[0] = absPathtoPreprocessingScript[0].upper()
    absPathtoPreprocessingScript = ''.join(absPathtoPreprocessingScript)

    absPathToUserFile = str(userFilePath).replace("\\", "/")
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
    if(os.path.isdir(absPathToUserFile)):               #if the input is a folder not a file
        absPathToUserFile_Inputed = absPathToUserFile                                  
        for file in os.listdir(absPathToUserFile):
            if(file.endswith('.exe')):
                cntExecutables += 1
                CompiledFlag = True
                absPathToUserFile_Inputed = absPathToUserFile+f"/{file}"           #We are taking only the last exe file
                continue
    else: 
        absPathToUserFile_Inputed = absPathToUserFile
        if(absPathToUserFile_Inputed.endswith('.exe')): CompiledFlag= True
           
    if(cntExecutables>1):
        with open(f'{OUTPUT_PATH}/logs.txt', 'w') as f:
            f.write('tell him we only accept either 1 executable or many source files only.')
        #log something to the user to tell him we only accept either 1 executable or many source files only.

    # print(absPathtoPreprocessingScript)
    # print(absPathToUserFile_Inputed)
    # print(OUTPUT_PATH)
    # print(absPathtoRetDec)
    # print(CompiledFlag)
    
    with open(f'{OUTPUT_PATH}/status.txt', 'w') as f:
        if(CompiledFlag): f.write('compiled ')
        else: f.write('submitted ')
    
    run(["powershell.exe", absPathtoPreprocessingScript, absPathToUserFile_Inputed, OUTPUT_PATH ,absPathtoRetDec, "true" if CompiledFlag else 'false'])
    
    # ----------------------------------------------------------------------------------------

    # ------------------- 2. IR to CFG ------------------- #
    '''
    input: output/source/output/user.ll
    output: output/userCFG/nodes.json 
            output/userCFG/edges.csv
    '''


    absPathtoCFGScript =  os.path.join(SCRIPT_ROOT_PATH ,"IrToCFGs","cfg_infer.py").replace("\\", "/")
    absPathtoCFGScript = list(absPathtoCFGScript)
    absPathtoCFGScript[0] = absPathtoCFGScript[0].upper()
    absPathtoCFGScript = ''.join(absPathtoCFGScript)

    absPathtoLLFile = os.path.join(OUTPUT_PATH,'LLfiles','UserCode.ll')
    absPathtoLLFile = list(absPathtoLLFile)
    absPathtoLLFile[0] = absPathtoLLFile[0].upper()
    absPathtoLLFile = ''.join(absPathtoLLFile)

    absPathtoCFGOutput = str(os.path.abspath("output/"))
    absPathtoCFGOutput = list(absPathtoCFGOutput)
    absPathtoCFGOutput[0] = absPathtoCFGOutput[0].upper()
    absPathtoCFGOutput = ''.join(absPathtoCFGOutput)

    run(["python",absPathtoCFGScript,absPathtoLLFile,OUTPUT_PATH])

    # ----------------------------------------------------------------------------------------
    # ------------------- 3. Features Extraction ------------------- #
    # ------------------- 3.1. Statistical Features ------------------- #
    '''
    input:  output/userCFG/nodes.json 
    output: ---
    '''

    absPathtoNodesEdges = os.path.join(OUTPUT_PATH, 'CFG_UserCode')
    
    for fi in os.listdir(absPathtoNodesEdges):
        if(fi.endswith('.csv')):
            os.makedirs(os.path.join(absPathtoNodesEdges, 'edges'))
            os.replace(os.path.join(absPathtoNodesEdges, fi) ,   os.path.join(absPathtoNodesEdges, 'edges', fi))
            absPathtoEdges_final = os.path.join(absPathtoNodesEdges, 'edges')
        
        
        elif(fi.endswith('.json')):
            os.makedirs(os.path.join(absPathtoNodesEdges, 'nodes'))
            os.replace(os.path.join(absPathtoNodesEdges, fi) ,   os.path.join(absPathtoNodesEdges, 'nodes', fi))
            absPathtoNodes_final = os.path.join(absPathtoNodesEdges, 'Nodes')

    absPathtoStatFeaturesScript = os.path.join(SCRIPT_ROOT_PATH ,"4-Features_Extraction","statistical_features.py").replace("\\", "/")
    absPathtoStatFeaturesScript = list(absPathtoStatFeaturesScript)
    absPathtoStatFeaturesScript[0] = absPathtoStatFeaturesScript[0].upper()
    absPathtoStatFeaturesScript = ''.join(absPathtoStatFeaturesScript)

    run(["python",absPathtoStatFeaturesScript, absPathtoNodes_final, absPathtoNodesEdges, 'test'])
    X_test = []




    # ----------------------------------------------------------------------------------------------------
    # ------------------------------------- Classification using GCN -------------------------------------
    # ----------------------------------------------------------------------------------------------------
    '''
    input: path to nodes, and edges only
    output: classification class
    '''
    # absPathToGCN_classifier_script = os.path.join(SCRIPT_ROOT_PATH, "GCN", "4-Features_Extraction","gcnInferPoint.py").replace("\\", "/")
    # modelPath = os.path.join(SCRIPT_ROOT_PATH, "models", 'GCN_class_g1.pkl')
    # classification_txt = os.path.join(OUTPUT_PATH, 'classification.txt')

    # run (['python', absPathToGCN_classifier_script, absPathtoNodes_final, absPathtoEdges_final, OUTPUT_PATH, modelPath, 'test', classification_txt])

    # with open(classification_txt, 'r') as f:
    #     classification = f.read()
    
    # print(f"I CLASSIFIED {classification}")

    # embDF = pd.read_csv(f"{OUTPUT_PATH}/embeddings_test.csv", header=None, index_col=None)



    # ----------------------------------------------------------------------------------------------------
    # ------------------------------------- Binary model after using GCN for classification -------------------------------------
    # ----------------------------------------------------------------------------------------------------
    '''
    input: same input as the prev stage
    output: safe or unsafe
    '''

    # absPathToGCN_classifier_script = os.path.join(SCRIPT_ROOT_PATH, "4-Features_Extraction","gcnInferPoint.py").replace("\\", "/")
    # modelPath = os.path.join(SCRIPT_ROOT_PATH, "models", 'GCN_class_safe.pkl')
    # classification_txt = os.path.join(OUTPUT_PATH, 'classification.txt')
    # run (['python', absPathToGCN_classifier_script, absPathtoNodes_final, absPathtoEdges_final, OUTPUT_PATH, modelPath, 'test', classification_txt])
    # # with open(classification_txt, 'r') as f:
    # #     classification = f.read()
    
    # # print(f"I CLASSIFIED {classification}")

    # embDF_safe = pd.read_csv(f"{OUTPUT_PATH}/embeddings_test.csv", header=None, index_col=None)

    # finalEmb = pd.concat([embDF, embDF_safe], axis=1, ignore_index=True)
    # finalEmb.to_csv(f'{OUTPUT_PATH}/embeddings_concat.csv', header=False, index=False)
    # print(len(finalEmb.columns))

    # binary_model_path = os.path.join(SCRIPT_ROOT_PATH, "models", f'{classification}_concat_adaboost.pkl')
    # with open(binary_model_path, 'rb') as f:
    #     binary_model = pickle.load(f)
    
    # final_classification = binary_model.predict(finalEmb)

    # print(f"\n\nI CLASSIFIED FINALLY :  {final_classification}\n\n")

    # with open(os.path.join(OUTPUT_PATH, 'classification.txt'), 'w') as f:
    #     f.write(final_classification)









    # ----------------------------------------------------------------------------------------
    # ------------------- 3. Features Extraction ------------------- #
    # ------------------- 3.2. Structural Features ------------------- #
    '''
    input:  output/userCFG/nodes.json 
    output: ---
    '''

    absPathtoGCNInfer = os.path.join(SCRIPT_ROOT_PATH , "GCN", "4-Features_Extraction","gcnInfer.py").replace("\\", "/")
    absPathtoGCNInfer = list(absPathtoGCNInfer)
    absPathtoGCNInfer[0] = absPathtoGCNInfer[0].upper()
    absPathtoGCNInfer = ''.join(absPathtoGCNInfer)
    
    absPathtoNodesEdges = os.path.join(OUTPUT_PATH, 'CFG_UserCode')

    ModelPaths =[
        os.path.join(SCRIPT_ROOT_PATH, 'models', 'GCN_class_g1.pkl'),
        os.path.join(SCRIPT_ROOT_PATH, 'models', 'GCN_class_g2.pkl'),
        os.path.join(SCRIPT_ROOT_PATH, 'models', 'GCN_class_g3.pkl'),
        os.path.join(SCRIPT_ROOT_PATH, 'models', 'GCN_class_g4.pkl')
    ]


    run(["python",absPathtoGCNInfer, absPathtoEdges_final, absPathtoNodesEdges, ModelPaths[0], ModelPaths[1], ModelPaths[2], ModelPaths[3], 'test'])

    EmbeddingPath = os.path.join(absPathtoNodesEdges, 'concatEmbeddings_test.csv')
    X_df = pd.read_csv(EmbeddingPath, header=None, index_col=None)
    X_df.drop(columns=X_df.columns[0], axis=1, inplace=True)
    X_test = X_df.iloc[: , :-1]

    # ----------------------------------------------------------------------------------------

    # ------------------- 4. Classification ------------------- #
    '''
    input: output/model.pkl, X_test
    output: output/classification.txt
    '''

    models=[]
    # for file in os.listdir(os.path.join(SCRIPT_ROOT_PATH, "models")):
    #     with open(os.path.join(SCRIPT_ROOT_PATH, "models", file), 'rb') as f:
    #         models.append(pickle.load(f))
    
    
    modelNames = ['rbf_svm_group1.pkl']
    for mName in modelNames:
       with open(os.path.join(SCRIPT_ROOT_PATH, "models", mName), 'rb') as f:
            models.append(pickle.load(f))
    

    with open(os.path.join(OUTPUT_PATH, 'classification.txt'), 'w') as f:
        classification_preds = []
        for model in models:
            y_pred = model.predict(X_test)
            if y_pred!= 'safe':
                cve_id= re.search(r"\d+", y_pred[0]).group(0)
                classification_preds.append(cve_id)
        f.write('\n'.join(list(set(classification_preds))))
    
    print(f"\n\n\nI CLASSIFIED : \n{classification_preds}")
    


    # # # check if the classification.txt file is empty, then user code is safe
    # if os.stat(f"{OUTPUT_PATH}/classification.txt").st_size == 0:
    #     print("No vulnerabilities found")
    #     with open(f'{OUTPUT_PATH}/logs.txt', 'a') as f:
    #         f.write('no Vulnerabilities found')
    #     sys.exit()

    # ----------------------------------------------------------------------------------------
    # with open(os.path.join(OUTPUT_PATH, 'classification.txt'), 'w') as f:
    #     f.write('191')

    #------------------------------ CLASSIFICATION REPORT -----------------------------------------------
    absPathToAssets = os.path.join(SCRIPT_ROOT_PATH, 'assets')
    absPathToReportScript = os.path.join(absPathToAssets, 'generateReport.py')
    absPathToReportScript = list(absPathToReportScript)
    absPathToReportScript[0] = absPathToReportScript[0].upper()
    absPathToReportScript = ''.join(absPathToReportScript)
    run(['python', absPathToReportScript, OUTPUT_PATH])


    
    with open(f'{OUTPUT_PATH}/status.txt', 'w') as f:
        f.write('classified')


    # ------------------- 5. Localizer ------------------- #
    '''
    input: output/UserCode.ll
           output/classification.txt
           output/source
    output: output/localization.txt
    # '''
    absPathtoGenerateSubGraphScript = os.path.join(SCRIPT_ROOT_PATH, "IrToCFGs", "generate_subgraphs.py")
    Localizer.main_localizer('false',#'true' if CompiledFlag else 'false',\
                            CFG_scriptPath= absPathtoGenerateSubGraphScript,
                            llvm_user_file=os.path.join(OUTPUT_PATH, 'LLfiles','UserCode.ll').replace("\\", "/"),\
                            clf_path=os.path.join(OUTPUT_PATH, 'classification.txt'),\
                            src_path=os.path.join(OUTPUT_PATH, 'source'),\
                            output_path=os.path.join(OUTPUT_PATH, 'span.json')) #not used haleyan
    





    #------------------------------ REPORT -----------------------------------------------
    # absPathToAssets = os.path.join(SCRIPT_ROOT_PATH, 'assets')
    # absPathToReportScript = os.path.join(absPathToAssets, 'generateReport.py')
    # absPathToReportScript = list(absPathToReportScript)
    # absPathToReportScript[0] = absPathToReportScript[0].upper()
    # absPathToReportScript = ''.join(absPathToReportScript)
    # run(['python', absPathToReportScript, OUTPUT_PATH])



    with open(f'{OUTPUT_PATH}/status.txt', 'w') as f:
       f.write('completed')


pipeline(userFilePath=userFilePath,userFile=userFile)