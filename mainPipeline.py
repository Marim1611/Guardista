import os, sys, pickle, re, json
from subprocess import run
import Localizer.Common.localizer as Localizer
import time
import pandas as pd
import numpy as np


userFilePath = sys.argv[1]
userFile = sys.argv[2]




RETDEC_PATH = r"D:/ClassWork/GP/RetDec/bin".replace('\\', '/')

SCRIPT_ROOT_PATH = str(os.path.split(os.path.realpath(__file__))[0])
OUTPUT_PATH = sys.argv[3]
if (not os.path.exists(OUTPUT_PATH)): os.makedirs(OUTPUT_PATH)


loc_only_flag = sys.argv[4]

'''
    The main pipeline for the project.
'''

def pipeline(userFilePath, userFile, Localize_only_flag):

    # ------------------- 1. Binary Preprocessing ------------------- #
    # TODO: Add the binary preprocessing script here. 
    '''
    input: user Folder
    output: output/user.ll
    '''


    CompiledFlag=False
    if(Localize_only_flag == 'false'):
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

        absPathtoGCNInfer = os.path.join(SCRIPT_ROOT_PATH, "4-Features_Extraction", "GCN", "gcnInfer.py").replace("\\", "/")
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




        # ----------------------------------------------------------------------------------------
        # ------------------- 3. Features Extraction ------------------- #
        # ------------------- 3.3. Semantic and Statistical Features ------------------- #
        '''
        input:  output/userCFG/nodes.json 
        output: dataframe of semantic embeddings
        '''

        

        absPath_to_w2v_embeddings_script = os.path.join(SCRIPT_ROOT_PATH, '4-Features_Extraction', 'semantic_features', '4-statistical_semantic_features.py')
        absPath_to_binary_models = os.path.join(SCRIPT_ROOT_PATH, '4-Features_Extraction', 'semantic_features', 'experiments', 'tokenize_only', 'binary_models')


        embeddings_semantic_dict = {}
        #loop on each W2V model, and for each model, extract an embedding's csv
        for folder in os.listdir(absPath_to_binary_models):
            w2v_model_path = os.path.join(absPath_to_binary_models, folder)

            if(not (os.path.isdir(w2v_model_path))):
                continue
                
        
            run(['python', absPath_to_w2v_embeddings_script, absPathtoNodes_final, absPath_to_binary_models, OUTPUT_PATH, folder])

            semantic_embeddings_df = pd.read_csv(os.path.join(OUTPUT_PATH, f'files_representations_{folder}.csv'), header=None, index_col=None)

            embeddings_semantic_dict[folder] = semantic_embeddings_df
    



        






        # ------------------- 4. Classification ------------------- #
        '''
        input: output/model.pkl, X_test
        output: output/classification.txt
        '''







        ######################################### Approach 1, Multiclassification, then a binary classifier ####################################



















        MultiClass_Models = [
            os.path.join(SCRIPT_ROOT_PATH, 'models', 'rbf_svm_group1_prob.pkl'),
            os.path.join(SCRIPT_ROOT_PATH, 'models', 'rbf_svm_group2_prob.pkl'),
            os.path.join(SCRIPT_ROOT_PATH, 'models', 'rbf_svm_group3_prob.pkl'),
            os.path.join(SCRIPT_ROOT_PATH, 'models', 'linear_svm_group4_prob.pkl')
        ]

        def load_model(model_path):
            with open(model_path, 'rb') as f:
                    model = pickle.load(f)
            return model

        # load 4 models
        model1 = load_model(MultiClass_Models[0])
        model2 = load_model(MultiClass_Models[1])
        model3 = load_model(MultiClass_Models[2])
        model4 = load_model(MultiClass_Models[3])




        test_point = X_test

        prob1 = model1.predict_proba(test_point)[0].max()
        result1=model1.classes_[ np.argmax( model1.predict_proba(test_point)[0]) ]
        prob2 = model2.predict_proba(test_point)[0].max()
        result2=model2.classes_[ np.argmax( model2.predict_proba(test_point)[0]) ]
        prob3 = model3.predict_proba(test_point)[0].max()
        result3=model3.classes_[ np.argmax( model3.predict_proba(test_point)[0]) ]
        prob4 = model4.predict_proba(test_point)[0].max()
        result4=model4.classes_[ np.argmax( model4.predict_proba(test_point)[0]) ]

        probs =np.array( [prob1,prob2,prob3,prob4])
        options= np.array([ result1, result2,result3, result4])
        result =options[probs.argmax()]

        print("\n\n\n\n\n\n\n\n\n\n\n")
        print(f"out of the {options} options, I classified : ")
        print(result)
        print("\n\n\n\n\n\n\n\n\n\n\n")





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

        '''



        #################################################### the binary model after the classification ###########################################
        
        classification_preds = re.findall('\d+',result)[0]

        allModelNames = os.listdir(os.path.join(SCRIPT_ROOT_PATH, 'models'))
        for m in allModelNames:
            if re.findall(classification_preds, m):
                chosen_model = m
                break


        #load the corresponding model
        Binary_modelPath = os.path.join(SCRIPT_ROOT_PATH, 'models', f'{chosen_model}')
        with open (Binary_modelPath, 'rb') as f:
            LR_binary = pickle.load(f)

        print(embeddings_semantic_dict.keys())

        #print(embeddings_semantic_dict['121'])
        
        FINAL_classification = LR_binary.predict( embeddings_semantic_dict[classification_preds].iloc[:, :-1])

        
        print(f"\n\n\n#######################################\nApproach 1 : I FINALLY CLASSIFIED : \n{FINAL_classification}\n#########################################\n")

        with open(os.path.join(OUTPUT_PATH, 'classification1.txt'), 'w') as f:
            f.write('\n'.join(FINAL_classification))

        with open(os.path.join(OUTPUT_PATH, 'App1Result.txt'), 'w') as f:
            f.write('\n'.join(FINAL_classification))

        #############################################################################################################################################
        






        ############################################## Approach 2, series of binary classifiers ######################################################

        binary_models_series_paths = {
            '23':os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_23.pkl'),
            '36':os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_36.pkl'),
            '78': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_78.pkl'),
            '121': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_121.pkl'),
            '122': os.path.join(SCRIPT_ROOT_PATH, 'models', 'ADB_122.pkl'),
            # '124': os.path.join(SCRIPT_ROOT_PATH, 'models', ''),
            '126': os.path.join(SCRIPT_ROOT_PATH, 'models', 'ADB_126.pkl'),
            '127': os.path.join(SCRIPT_ROOT_PATH, 'models', 'ADB_127.pkl'),
            '134': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_134.pkl'),
            # '190': os.path.join(SCRIPT_ROOT_PATH, 'models', ''),
            '191': os.path.join(SCRIPT_ROOT_PATH, 'models', 'ADB_191.pkl'),
            # '194': os.path.join(SCRIPT_ROOT_PATH, 'models', ''),
            '195': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_195.pkl'),
            '401': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_401.pkl'),
            '457': os.path.join(SCRIPT_ROOT_PATH, 'models', 'ADB_457.pkl'),
            '590': os.path.join(SCRIPT_ROOT_PATH, 'models', 'svm_590.pkl'),
            '690': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_690.pkl'),
            '762': os.path.join(SCRIPT_ROOT_PATH, 'models', 'LR_762.pkl'),
        }

        all_classifications_of_series = {}

        for cve_binary, bin_model_path in binary_models_series_paths.items():
            with open(bin_model_path, 'rb') as f:
                bin_model = pickle.load(f)
            
            pred_bin = bin_model.predict(embeddings_semantic_dict[cve_binary].iloc[:, :-1])
            all_classifications_of_series.update({cve_binary: pred_bin})

        print(f"\n\n\n#######################################\nApproach 2 : \n{all_classifications_of_series}\n#########################################\n")



        classification_list = []
        for k,v in all_classifications_of_series.items():
            if(v != 'safe'):
                classification_list.append(k)

        with open(os.path.join(OUTPUT_PATH, 'classification2.txt'), 'w') as f:
            f.write('\n'.join(classification_list))

        print(classification_list)

        class_result = {}
        for k,v in all_classifications_of_series.items():
            class_result[k] = [0] if v == 'safe' else [1]
        with open(os.path.join(OUTPUT_PATH, 'App2Result.json'), 'w') as f:
            json.dump(class_result, f)













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
    Localizer.main_localizer('true' if (CompiledFlag and Localize_only_flag == 'false') else 'false',\
                            CFG_scriptPath= absPathtoGenerateSubGraphScript,
                            llvm_user_file=os.path.join(OUTPUT_PATH, 'LLfiles','UserCode.ll').replace("\\", "/"),\
                            clf_path=os.path.join(OUTPUT_PATH, 'classification2.txt'),\
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


pipeline(userFilePath=userFilePath, userFile=userFile, Localize_only_flag=loc_only_flag)