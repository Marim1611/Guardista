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

classification_1, embeddings_df_1 = gcnHelpers.InferenceGCN( 'GCN.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)


'''

classification_2, embeddings_df_2 = gcnHelpers.InferenceGCN( 'GCN2.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_2.drop(list(embeddings_df_2.columns)[0], inplace=True)


classification_3, embeddings_df_3 = gcnHelpers.InferenceGCN( 'GCN3.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_3.drop(list(embeddings_df_3.columns)[0], inplace=True)

classification_4, embeddings_df_4 = gcnHelpers.InferenceGCN( 'GCN4.pkl' , pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles='true', npyPath=npyPath, cve=cve)
embeddings_df_4.drop(list(embeddings_df_4.columns)[0], inplace=True)

finalDF = pd.concat([embeddings_df_1, classification_2, classification_3, classification_4], axis=1)
finalDF.to_csv(outputPath+'/concatEmbeddings.csv')

'''
        
 