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


pathToUser_Nodes = sys.argv[1]
pathToUser_Edges = sys.argv[2]
outputPath = sys.argv[3]
multipleFiles = sys.argv[4]

gcnHelpers.InferenceGCN(pathToUser_Nodes=pathToUser_Nodes,   pathToUser_Edges=pathToUser_Edges , outputPath=outputPath, multipleFiles=multipleFiles)


        
