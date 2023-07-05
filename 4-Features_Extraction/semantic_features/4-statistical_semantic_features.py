import gensim
import os
from LLNormalizer import *
import csv
import numpy as np
import sys
from CodePreprocessing import *
from tqdm import tqdm

#---------------------------------------------------------------------------------------------------------------------------

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

def semantic_features(data):
    features_matrix = []
    
    for node in data.values():
        bb_tokens_embs = []
        tokens_string = ''.join(node[:-1])
        tokens_array = tokenizeLLVM(tokens_string, True)  

        for word in tokens_array:
            if word in model.wv.key_to_index:
                
                embedding = model.wv[word]
                
                bb_tokens_embs.append(embedding)

        bb_emb = np.asarray(bb_tokens_embs).mean(axis=0)
        features_matrix.append(bb_emb)
    
    return features_matrix

#--------------------------------------------------------------------------------------------------------------------------------

def embeddings_per_basic_block(nodes_directory_path):
    # semantic_features_matrices_list = []
    # statistical_features_matrices_list = []
    features_matrices_list = []

    i=0
    for filename in tqdm(os.listdir(nodes_directory_path)):
        if i>1500 : break
        f = os.path.join(nodes_directory_path, filename)
        if os.path.isfile(f) and f.endswith('.json'):

            data, list_features, initial_features_matrix = prepare(f)

            stat_features_matrix, list_features = statistical_features(data,list_features, initial_features_matrix)
            # statistical_features_matrices_list.append(stat_features_matrix)

            semantic_features_matrix = semantic_features(data)
            # semantic_features_matrices_list.append(semantic_features_matrix)

            file_arr = []
            for (a,b) in zip(stat_features_matrix, semantic_features_matrix):
                if(type(b) != np.float64):
                    bb_arr = np.concatenate((a,b))
                    file_arr.append(bb_arr)
                else: 
                    b_temp = np.zeros(100)
                    bb_arr = np.concatenate((a,b_temp))
                    file_arr.append(bb_arr)
            features_matrices_list.append(file_arr)
            # print('file array shape', np.array(file_arr).shape)

        i+=1
    print(np.array(features_matrices_list).shape)
    # return np.array(statistical_features_matrices_list, dtype=object), np.array(semantic_features_matrices_list, dtype=object)
    return np.array(features_matrices_list, dtype=object)

#--------------------------------------------------------------------------------------------------------------------------------

nodes_directory_path = sys.argv[1]
models_path = sys.argv[2]
out_path = sys.argv[3]
cwe = sys.argv[4]

cwe_without_safe = cwe.split('_')[0]

# Load pre-trained Word2Vec model.
model = gensim.models.Word2Vec.load(models_path+"/"+cwe_without_safe+"/word2vec.model")


# statistical_features_matrices_list, semantic_features_matrices_list = embeddings_per_basic_block(nodes_directory_path)
features_matrices_list = embeddings_per_basic_block(nodes_directory_path)

print('number of matrices', len(features_matrices_list))

if not os.path.exists(out_path):
    os.mkdir(out_path)

# if not os.path.exists(out_path+'/stat_matrices'):
#     os.mkdir(out_path+'/features_matrices')

# if not os.path.exists(out_path+'/semantic_matrices'):
#     os.mkdir(out_path+'/semantic_matrices')

# with open(out_path+'/features_matrices/features_matrices_' + cwe + '.npy', 'wb') as f:
#     np.save(f, statistical_features_matrices_list)

# with open(out_path+'/semantic_matrices/semantic_matrices_' + cwe + '.npy', 'wb') as f:
#     np.save(f, semantic_features_matrices_list)

if not os.path.exists(out_path+'/stat_semantic_matrices'):
    os.mkdir(out_path+'/stat_semantic_matrices')

with open(out_path+'/stat_semantic_matrices/stat_semantic_matrices_' + cwe + '.npy', 'wb') as f:
    np.save(f, features_matrices_list)
