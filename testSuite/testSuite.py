import os, sys, pickle, re, json
from subprocess import run
import time
import pandas as pd


SCRIPT_ROOT_PATH = str(os.path.split(os.path.realpath(__file__))[0])

GUARDISTA_ROOT_PATH = str(os.path.split(os.path.split(os.path.realpath(__file__))[0])[0])




absPathtoGCNInfer = os.path.join(GUARDISTA_ROOT_PATH ,"4-Features_Extraction","gcnInfer.py").replace("\\", "/")
absPathtoGCNInfer = list(absPathtoGCNInfer)
absPathtoGCNInfer[0] = absPathtoGCNInfer[0].upper()
absPathtoGCNInfer = ''.join(absPathtoGCNInfer)

cves_to_be_tested=['23_test', '36_test']


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

