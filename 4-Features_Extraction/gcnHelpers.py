from statFeaturesUtil import features_per_graph_per_node
import pandas as pd
import numpy as np
import torch
import re
import os, pickle, json
from torch_geometric.data import Data, Batch
from torch_geometric.nn import GCNConv, Sequential
from torch_geometric.data import Dataset
from torch_geometric.loader import DataLoader
import torch.nn.functional as F

'''
This script contains a lot of helper functions
1) Preprocessing an input point or an input folder and returning the data as Data (pytorch geometric graph structure)
2) GCN architecture
3) Inference using this GCN
'''







#----------------------------------------------------------------------------------------------------------------------------------
#                                                       Preprocessing

def preProcessingOneDataPoint(pathToUserNodes, pathToUserEdges, npyPath=None):
    '''
    this function takes a path to the folder containing the UserNodes, and another path to a folder containing the user edges files
    each folder can contain either 1 file or multiple files, just make sure not to put mismatched files in the same...
        folder (mixing csvs and json or mismatched files)
    
    if the folders contains only one file for each folder, the returned value is a list containing only 1 data point, just use it as
    allData[0]          just take care cuz I was falling for this trap

    npyPath is the path of the npy of the statistical features there is any.

    '''
    
    if(not npyPath):
        features_matrices_list,_ = features_per_graph_per_node(pathToUserNodes)
    else:
        with open (npyPath, 'rb') as f:
            features_matrices_list = np.load(f,  allow_pickle=True)

    

    # Reading the adjacency list of each graph
    adj_Lists = []
    for filename in os.listdir(pathToUserEdges):
        f = os.path.join(pathToUserEdges, filename)
        df = pd.read_csv(f, header=None)
        df.dropna(inplace=True)             # <---- here is the dropping
        adj_Lists.append(df)

        
      
    # Reading the features of each node
    node_Features_List = []
    for node_feature in features_matrices_list:
        n = np.array(node_feature,dtype='int64')
        node_Features_List.append(torch.tensor(n, dtype=torch.float))

    
    # Convert the edge list to use 0-based indices
    adj_Tensors = []
    for adj in adj_Lists:
        # the documentation strictly says to convert the adjacency list to a contiguous list
        adj_Tensors.append(torch.as_tensor(adj.to_numpy(), dtype=torch.long).t().contiguous())   

        
    allData = []


    #Iterate over each graph, make a Data object, then append to all our dataset
    cntCorruptData=0
    
    for i, adj in enumerate(adj_Tensors):
        d = Data(x=node_Features_List[i], edge_index=adj, y=torch.as_tensor(np.zeros (     (len(node_Features_List[i]) ,1)  )       ) )  # <--- from the documentation.
        try:
            d.validate(raise_on_error=True)     # <--------- this line makes sure each input graph strictly follows the correct rules, to evade errors
        except:
            print('DIMENSION ERROR')
            print(f"We have features for {len(node_Features_List[i])} Nodes ")
            print(f"But the adjacency list contains {max(set(np.array(adj[0,:])))} Unique Nodes")
            cntCorruptData +=1
            continue
        allData.append(d)

    return allData






#----------------------------------------------------------------------------------------------------------------------------------
#                                           Anything related to the GCN architecture



# Customize this as you wish, just make sure the first conv layer takes feature_dimension, and the last hidden conv layer outputs num_classes
class GCN(torch.nn.Module):
    def __init__(self, hidden_channels , feature_dimension, num_classes, lr, weight_decay=5e-4):
        super().__init__()
        self.conv1 = GCNConv(feature_dimension, 60)
        self.conv2 = GCNConv(60, 60)
        self.conv3 = GCNConv(60, 30)
        self.conv4 = GCNConv(30, 16)
        self.conv5 = GCNConv(16, num_classes)
        self.optimizer = torch.optim.Adam(self.parameters(), lr=0.001, weight_decay=5e-4)
    
    def forward(self, x, edge_index):
        # x: Node feature matrix 
        # edge_index: Graph connectivity matrix 
        x = self.conv1(x, edge_index)
        x = F.relu(x)
        x = self.conv2(x, edge_index)
        x = F.relu(x)
        x = self.conv3(x, edge_index)
        x = F.relu(x)
        x = self.conv4(x, edge_index)
        x = F.relu(x)
        x = F.dropout(x, training=self.training)
        Embedding = x
        x = self.conv5(x, edge_index)
        return x, F.log_softmax(x, dim=1), Embedding   # X is used for the loss computation,  F.log_softmax is the classification, Embedding is the emb

    

def train(model, data, optimizer, criterion,device='cuda'):
    model.train()
    optimizer.zero_grad()  # Clear gradients.
    
    out = model(data.x.to(device=device), data.edge_index.to(device=device))  # Perform a single forward pass.
    loss = criterion(out[1], data.y.to(device=device))  # Compute the loss solely based on the training nodes.
    loss.backward()  # Derive gradients.
    optimizer.step()  # Update parameters based on gradients.
    embOut = out[2]
    return loss, embOut



def test(model, data, device='cuda'):
    model.eval()
    out = model(data.x.to(device=device), data.edge_index.to(device=device))
    pred = out[1].argmax(dim=1)  # Use the class with highest probability.
    test_correct = pred == data.y.to(device=device)  # Check against ground-truth labels for test nodes.
    test_acc = int(test_correct.sum()) / int(len(data.x))  # Derive ratio of correct predictions.

    EmbOutput = out[2]
    return test_acc, pred, EmbOutput






#----------------------------------------------------------------------------------------------------------------------------------
#                                               Inference


def InferenceGCN (pathToUser_Nodes, pathToUser_Edges, outputPath, multipleFiles, npyPath=None):
    '''
    pathToUser_Nodes : folder containing json files
    pathToUser_Edges : folder containing csv files
    outPath : folder to write the embeddings in
    multipleFiles: true or false     (IN LOWER CASE)
    true if the folders contain multiple files
    false if the folders contain only 1 file, to be used during production for ease of use

    npyPath is tha path of the npy of the statistical features, if there are any.


    Outputs:
    1) classification of each node (0, 1, 2, 3, 4)      ---should-be-mapped-to-->    ('121', '191', '401', '457' )
    2) embedding for each node
    3) average pooled embedding for the entire graph or a list of embeddings for each graph if we used multiple files
    4) max pooled embeddings for the entire graph or a list of embeddings for each graph if we used multiple files
    5) save a csv file called embeddings.csv in the output path, containing the test case name, its embeddings, and the label

    NOTICE : I PARSE THE LABEL FROM THE FILE NAME, NOT FROM THE NODES_TARGETS
            DO NOT PUT SAFE FILES IN THE DIRECTORY, OR YOU WILL FIND THEIR LABELS PUT WRONGFULLY
    
    '''

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")


    if(multipleFiles == 'false'):

        inputPoint = preProcessingOneDataPoint(pathToUser_Nodes, pathToUser_Edges, npyPath)
        with open('GCN.pkl', 'rb') as f:
            model = pickle.load(f).to(device=device)

        _,classification,Embedding = test(model, inputPoint[0], device=device)

        finalClassification = classification.cpu().numpy()
        finalEmbedding = Embedding.cpu().detach().numpy()
        AvgPooledEmb = np.mean(finalEmbedding, axis=0)
        MaxPooledEmb = np.amax(finalEmbedding, axis=0)
        

        filename=''
        for fi in os.listdir(pathToUser_Nodes):
            if(fi.endswith('.json')):
                filename=fi

        embeddingDict = dict()
        embeddingDict[filename] = finalEmbedding

        #with open (outputPath+'/embeddings.json' , 'wb') as f:
        #    json.dump(f, embeddingDict)

        with open (outputPath+'/embeddings.npy' , 'wb') as f:
            np.save(f, finalEmbedding)
        
        df = pd.DataFrame(data=AvgPooledEmb)
        df = df.transpose()
        df.insert(0, len(df.columns), filename)
        df.columns = range(df.shape[1])
        df.to_csv(outputPath+'/embeddings.csv', header=False, index=False)


        return  finalClassification,  finalEmbedding, AvgPooledEmb, MaxPooledEmb



    elif(multipleFiles == 'true'):

        inputPoints = preProcessingOneDataPoint(pathToUser_Nodes, pathToUser_Edges, npyPath)

        with open('GCN.pkl', 'rb') as f:
            model = pickle.load(f).to(device=device)

        finalClassifications = []
        finalEmbeddings = []
        AvgPoolEmbeddings = []
        MaxPoolEmbeddings = []
        filenames = []
        labels = []

        

        for (point, nodeFile) in zip(inputPoints, os.listdir(pathToUser_Nodes)):
            _,classification,Embedding = test(model, point, device=device)

            emb = Embedding.cpu().detach().numpy()


            finalEmbeddings.append(emb)
            finalClassifications.append(classification.cpu().numpy())

            AvgPoolEmbeddings.append(np.mean(emb, axis=0))
            MaxPoolEmbeddings.append(np.amax(emb, axis=0))
            filenames.append(nodeFile[5:-5])                    # Storing the filename as it is without json or csv, example: CWE23_relativepath.ll


            if(re.findall('[sS][aA][fF][eE]',nodeFile)):            # if the file contains the word 'safe' put the label as 0
                labels.append('0')
            elif(re.findall('\d+',nodeFile)[0]):
                labels.append(re.findall('\d+',nodeFile)[0])        # I am parsing the CVE label from the file name
            else:
                labels.append('0')                                  # If the file doesn't follow our naming convention, put the label as 0

        
        df = pd.DataFrame(data=AvgPoolEmbeddings)
        df.insert(0, len(df.columns), filenames)
        df.insert(len(df.columns), len(df.columns), labels)
        df.columns = range(df.shape[1])
        
        df.to_csv(outputPath+'/embeddings.csv', header=False, index=False)

            

            
    
        return finalClassifications, finalEmbeddings, AvgPoolEmbeddings, MaxPoolEmbeddings
