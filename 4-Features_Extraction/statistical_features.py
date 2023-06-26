import re
import pandas as pd
import numpy as np
import json
import os
import sys

def prepare(fi):
    f = open(fi)
    data = json.load(f)
    
    total_instructions = 0
    for node_list in data.values():
        for inst in node_list[:-1]:
            total_instructions += 1

    num_nodes = len(list(data.keys()))

    list_features = []
    terminator_instructions = ['ret', 'br', 'call', 'switch', 'indirectbr', 'invoke', 'callbr', 'resume',
                    'catchsweitch', 'catchret', 'cleanupret']
    unary_instructions = ['fneg']
    binary_instructions = ['add', 'fadd', 'sub', 'fsub', 'mul', 'fmul', 'div', 'udiv',
                    'sdiv', 'urem', 'srem', 'frem', 'fcmp', 'icmp', 'load', 'store']
    operands = ['void', '%\\d+']
    strings = ['alloca', 'memcpy', 'memset']
    for i in terminator_instructions:
        list_features.append(i)
    for i in unary_instructions:
        list_features.append(i)
    for i in binary_instructions:
        list_features.append(i)
    for i in operands:
        list_features.append(i)
    for i in strings:
        list_features.append(i)

    f.close()

    initial_features_matrix = np.zeros(shape = (num_nodes, len(list_features)), dtype=int)
    return data, list_features, initial_features_matrix

#---------------------------------------------------------------------------------------------------------------------------

def statistical_features(data, list_features, features_matrix):
    i = 0
    for node in data.values():
        for j in range(len(list_features)):
            regex = '\s'+list_features[j]+'\s'
            for inst in node[:-1]:
                if re.search(regex, inst):
                    features_matrix[i][j] += 1
                if list_features[j] == 'memcpy':
                    if re.search('memcpy', inst):
                        features_matrix[i][j] += 1
                if list_features[j] == 'memset':
                    if re.search('memset', inst):
                        features_matrix[i][j] += 1
        i+=1
    
    return features_matrix, list_features

#--------------------------------------------------------------------------------------------------------------------------------

def features_per_graph_per_node(nodes_directory_path):
    features_matrices_list = []
    nodes_targets_list = []
    i = 0
    for filename in os.listdir(nodes_directory_path):
        f = os.path.join(nodes_directory_path, filename)

        if os.path.isfile(f) and f.endswith('.json'):
            # print(f)
            data, list_features, initial_features_matrix = prepare(f)
            features_matrix, list_features = statistical_features(data,list_features, initial_features_matrix)

            features_matrices_list.append(features_matrix)
            # print('dimensions before', features_matrix.shape)

            nodes_targets = []
            for key, val in data.items():
                # node_target = [key,val[-1]]
                node_target = val[-1]
                if node_target == '1':
                    print(node_target)
                nodes_targets.append(node_target)
            # print(len(nodes_targets))
            nodes_targets_list.append(nodes_targets)

            i+=1

    return np.array(features_matrices_list, dtype=object), np.array(nodes_targets_list, dtype=object)

#------------------------------------------------------------------------------------------------------------------------------------

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
