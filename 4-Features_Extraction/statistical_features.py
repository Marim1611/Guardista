import re
import pandas as pd
import numpy as np
import json
import os
import sys
from statFeaturesUtil import features_per_graph_per_node

# nodes_directory_path = 'CFGs/'+ cve +'_CFGs/nodes_' + cve
nodes_directory_path = sys.argv[1]

out_path = sys.argv[2]

# PUT CVE CLASS
# cve = 'SAFE_23'
cve = sys.argv[3]

features_matrices_list, nodes_targets_list = features_per_graph_per_node(nodes_directory_path)

print('number of matrices', len(features_matrices_list))

if not os.path.exists(out_path):
    os.mkdir(out_path)

if not os.path.exists(out_path+'/features_matrices'):
    os.mkdir(out_path+'/features_matrices')

if not os.path.exists(out_path+'/nodes_targets'):
    os.mkdir(out_path+'/nodes_targets')

# PUT CVE CLASS
with open(out_path+'/features_matrices/features_matrices_' + cve + '.npy', 'wb') as f:
    np.save(f, features_matrices_list)

with open(out_path+'/nodes_targets/nodes_targets_' + cve + '.npy', 'wb') as f:
    np.save(f, nodes_targets_list)
