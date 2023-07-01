from statFeaturesUtil import features_per_graph_per_node
import pandas as pd
import numpy as np
import json
import torch
import os
from torch_geometric.data import Data, Batch
import pickle
from torch_geometric.data import Dataset
from torch_geometric.loader import DataLoader
import torch.nn.functional as F
import gcnHelpers
import sys

'''
    THIS script aims to extract the graph embeddings out of a certain CVE class
    arguments:
    1) abs path to the folder containing json node files (nodes_23)
    2) abs path to the folder containing csv edges files (edges_23)
    3) abs path to the output folder where the csv will be written
    4) multiple files = true   [SMALL CASE]    when you are operating this script on a folder containing multiple files
       multiple files = false  [SMALL CASE]    when you are inferencing on only 1 graph (one folder for nodes containing one json file only,
       and one folder for edges containing one csv file only)
    5) npyPath is the path of the npy File containing the nodes features, else just write 'none' [SMALL CASE]
'''



pathToUser_Edges = sys.argv[1]
outputPath = sys.argv[2]
cve = sys.argv[3]

npyPath = outputPath+'/features_matrices/features_matrices_' + cve + '.npy'

classification_1, embeddings_df_1 = gcnHelpers.InferenceGCN( 'GCN_1.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
LabelColumn = embeddings_df_1.iloc[:, -1]
embeddings_df_1.drop(columns=list(embeddings_df_1.columns)[-1], inplace=True)



classification_2, embeddings_df_2 = gcnHelpers.InferenceGCN( 'GCN_2.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_2.drop(columns=list(embeddings_df_2.columns)[0], inplace=True)
embeddings_df_2.drop(columns=list(embeddings_df_2.columns)[-1], inplace=True)


classification_3, embeddings_df_3 = gcnHelpers.InferenceGCN( 'GCN_3.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_3.drop(columns=list(embeddings_df_3.columns)[0], inplace=True)
embeddings_df_3.drop(columns=list(embeddings_df_3.columns)[-1], inplace=True)

classification_4, embeddings_df_4 = gcnHelpers.InferenceGCN( 'GCN_4.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_4.drop(columns=list(embeddings_df_4.columns)[0], inplace=True)
embeddings_df_4.drop(columns=list(embeddings_df_4.columns)[-1], inplace=True)

finalDF = pd.concat([embeddings_df_1, embeddings_df_2, embeddings_df_3, embeddings_df_4, LabelColumn], axis=1, ignore_index=True)
print(len(finalDF.columns))
print(finalDF.head())
finalDF.to_csv(outputPath+f'/concatEmbeddings_{cve}.csv', header=False, index=False)

        
 