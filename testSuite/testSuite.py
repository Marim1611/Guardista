import os, sys, pickle, re, json
from subprocess import run
import time
import pandas as pd
from sklearn.metrics import classification_report


SCRIPT_ROOT_PATH = str(os.path.split(os.path.realpath(__file__))[0])

GUARDISTA_ROOT_PATH = str(os.path.split(os.path.split(os.path.realpath(__file__))[0])[0])

which_approach = sys.argv[1]



absPathtoGCNInfer = os.path.join(GUARDISTA_ROOT_PATH ,"4-Features_Extraction","GCN","gcnInfer.py").replace("\\", "/")
absPathtoGCNInfer = list(absPathtoGCNInfer)
absPathtoGCNInfer[0] = absPathtoGCNInfer[0].upper()
absPathtoGCNInfer = ''.join(absPathtoGCNInfer)

cves_to_be_tested=['78_test', '23_test', '124_test', '195_test', '457_test', '36_test', '190_test',
                   '191_test', '194_test', '762_test', '134_test', 
                   '121_test', '122_test', '126_test', '127_test', '401_test', '590_test', '690_test']


if (which_approach == '1'):

##################################################################### FIRST THE STACKED CLASSIFIERS ######################################################

    ModelPaths =[
        os.path.join(GUARDISTA_ROOT_PATH, 'models', 'GCN_class_g1.pkl'),
        os.path.join(GUARDISTA_ROOT_PATH, 'models', 'GCN_class_g2.pkl'),
        os.path.join(GUARDISTA_ROOT_PATH, 'models', 'GCN_class_g3.pkl'),
        os.path.join(GUARDISTA_ROOT_PATH, 'models', 'GCN_class_g4.pkl')
    ]


    allCSVs = pd.DataFrame()

    for cve in cves_to_be_tested:
        path_to_cve_test_folder = os.path.join('testMulti', cve)
        path_to_edges = os.path.join(path_to_cve_test_folder, f"edges_{cve}")
        path_to_nodes = os.path.join(path_to_cve_test_folder, f"nodes_{cve}")

        CVE_label = re.findall('\d+', cve)[0]

        EmbeddingPath = os.path.join(path_to_cve_test_folder, f'concatEmbeddings_{CVE_label}.csv')
        if(os.path.isfile(EmbeddingPath)):
            X_df = pd.read_csv(EmbeddingPath, header=None, index_col=None)
        
        else:
            run(["python",absPathtoGCNInfer, path_to_edges, path_to_cve_test_folder, ModelPaths[0], ModelPaths[1], ModelPaths[2], ModelPaths[3], CVE_label])
            X_df = pd.read_csv(EmbeddingPath, header=None, index_col=None)
        #X_df.drop(columns=X_df.columns[0], axis=1, inplace=True)
        #X_test = X_df.iloc[: , :-1]

        allCSVs = pd.concat([allCSVs, X_df], axis=0)


    allCSVs.to_csv(f"{'_'.join(cves_to_be_tested)}.csv", header=False, index=False)


    models_to_be_tested = [
        #os.path.join(GUARDISTA_ROOT_PATH, 'models', 'rbf_svm_group1.pkl'),
        #os.path.join(GUARDISTA_ROOT_PATH, 'models', 'rbf_svm_group2.pkl'),
        #os.path.join(GUARDISTA_ROOT_PATH, 'models', 'rbf_svm_group3.pkl'),
        #os.path.join(GUARDISTA_ROOT_PATH, 'models', 'linear_svm_group4.pkl'),
        #os.path.join(GUARDISTA_ROOT_PATH, 'models', 'rbf_svm_group4.pkl'),
        os.path.join(GUARDISTA_ROOT_PATH, 'models', 'svm_all18.pkl')
        
    ]


    for mod in models_to_be_tested:
        with open(mod, 'rb') as f:
            model = pickle.load(f)
        allPreds = model.predict(allCSVs.iloc[:, 1:-1])

        model_name = os.path.split(mod)[1]
        print(f"\n\n####################### USING model {model_name} as a classifier #########################################\n")
        print(classification_report(allCSVs.iloc[:, -1], allPreds))
        print(f"\n\n####################### ######################################## #########################################\n")



else:
######################################################################### SECOND THE SERIES OF BINARY CLASSIFIERS ######################################


    absPath_to_W2V_models = os.path.join(GUARDISTA_ROOT_PATH, '4-Features_Extraction', 'semantic_features', 'experiments', 'tokenize_only', 'binary_models')
    absPath_to_Semantic_script = os.path.join(GUARDISTA_ROOT_PATH, '4-Features_Extraction', 'semantic_features', '4-statistical_semantic_features.py')


    DF_all_data = pd.DataFrame()
    for cve in cves_to_be_tested:
        path_to_cve_test_folder = os.path.join('testMulti', cve)
        path_to_edges = os.path.join(path_to_cve_test_folder, f"edges_{cve}")
        path_to_nodes = os.path.join(path_to_cve_test_folder, f"nodes_{cve}")

        CVE_label = re.findall('\d+', cve)[0]
        
        if(re.findall('safe', cve)):
            CVE_label = CVE_label + '_safe'
        
        #run(['python', absPath_to_Semantic_script, path_to_nodes, absPath_to_W2V_models, CVE_label])



        EmbeddingPath = os.path.join(path_to_cve_test_folder, f'files_representations_{CVE_label}.csv')
        X_df = pd.read_csv(EmbeddingPath, header=None, index_col=None)
        DF_all_data = pd.concat([DF_all_data, X_df], axis=0)
    
    modelPath = os.path.join(GUARDISTA_ROOT_PATH, 'models', 'LR_binary_78.pkl')

    with open(modelPath, 'rb') as f:
        LRModel = pickle.load(f)

    allPreds_binary = LRModel.predict(DF_all_data.iloc[:, :-1])


    print(f"\n\n####################### USING model {modelPath} as a classifier #########################################\n")
    print(classification_report(DF_all_data.iloc[:, -1], allPreds_binary))
    print(f"\n\n####################### ######################################## #########################################\n")
    