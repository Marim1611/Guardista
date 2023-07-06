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

classes = {
    0:'122',
    1:'121',
    2:'78',
    3:'190'
}

pathtoUserNodes = sys.argv[1]
pathToUser_Edges = sys.argv[2]
outputPath = sys.argv[3]
modelPath = sys.argv[4]
cve = sys.argv[5]

classification_text = sys.argv[6]


scriptPath = os.path.split(os.path.realpath(__file__))[0]

classification, embDF = gcnHelpers.InferenceGCN (model=modelPath, pathToUser_Edges=pathToUser_Edges, outputPath=outputPath, multipleFiles='false', cve=cve,npyPath=None, pathToUser_Nodes=pathtoUserNodes)


print(classification)
print(classes[classification])
print(f"len of columns = {len(list(embDF.columns))}")

with open(classification_text, 'w') as f:
    f.write(classes[classification])

embDF.drop(columns=list(embDF.columns)[0], inplace=True)
embDF.drop(columns=list(embDF.columns)[-1], inplace=True)
#embCSV = embDF[:, 1:-1]
print(f"length of embedding is {len(list(embDF.columns))}")
embDF.to_csv(f"{outputPath}/embeddings_{cve}.csv", header=False, index=False)


