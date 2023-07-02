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

scriptPath = os.path.split(os.path.realpath(__file__))[0]

gcnHelpers.mergeEmbeddings(  scriptPath, pathToUser_Edges, outputPath, cve, csvPath=None)
        
 