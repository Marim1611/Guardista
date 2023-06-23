import csv
import json
import os

def create_dataFrame(edges,file_name,new_nodes, foldername=None,root_folder =None,path=""):
    ''' create a csv file for the edges of the graph
    Args:
        edges (list): list of edges
        file_name (str): name of the file
        new_nodes (dict): dictionary of nodes with key: integer ids
        foldername (str): name of the folder(cve)
    '''
    if path == "":
        edges_folder="edges_"+foldername
        if not os.path.exists(edges_folder):
            os.mkdir(edges_folder)
        path=root_folder+foldername+"_CFGs/"+edges_folder+'/edges_'+file_name+'.csv'
    else:
        path=path+'/edges_'+file_name+".csv"
    with open(path, 'w', newline='') as file:
        writer = csv.writer(file)
        for edge in edges:
            src=get_key(new_nodes,edge.source_id)
            target=get_key(new_nodes,edge.target_id)
            writer.writerow( [src, target])

#-------------------------------------------------------------------------------

def get_key(new_nodes, label):
    ''' map the node label to its number integer id '''
    for id in new_nodes.keys():
        if new_nodes[id].label == label:
            return id
        
#-------------------------------------------------------------------------------

def prepare_json(nodes, file_name,foldername= None ,root_folder=None,path=""):
    ''' create a json file for the nodes of the graph
    '''
    nodes_IRs={}
    for ID in nodes.keys():
        nodes[ID].instructions.append(1 if nodes[ID].vulnerable else 0)
        nodes_IRs[ID]=nodes[ID].instructions 
    jsonString = json.dumps(nodes_IRs)
    if path == "":
        nodes_folder="nodes_"+foldername
        path=root_folder+foldername+"_CFGs/"+nodes_folder+'/json_'+file_name+".json"
    else:
        path=path+'/nodes_'+file_name+".json"
    jsonFile = open(path, "w")
    jsonFile.write(jsonString)
    jsonFile.close()


def create_json(dic, path):
    ''' create a json file for the nodes of the graph
    '''
    jsonString = json.dumps(dic)
    jsonFile = open(path, "w")
    jsonFile.write(jsonString)
    jsonFile.close()

#-------------------------------------------------------------------------------
def convert_labels_to_IDs(nodes):
    ''' convert the labels of the nodes to integer ids'''
    new_nodes={}
    ID=0

    for key in nodes.keys():
        new_nodes[ID]=nodes[key] 
        ID+=1  
    return new_nodes

#-------------------------------------------------------------------------------

def prepare_directories(foldername):
    ''' create the output directories '''
    current_path=os.path.dirname(os.path.abspath(__file__))
    current_path=current_path.replace("\\","/")
    root_folder=current_path+"/CFGs/"
    # root folder for all graphs
    if not os.path.exists(root_folder):
        os.mkdir(root_folder) 
    # folder for all graphs of a specific testcase
    specific_folder=root_folder+"/"+foldername+"_"+"CFGs"
    if not os.path.exists(specific_folder):
        os.mkdir(specific_folder) 
    # folder for all edges of a specific testcase
    edges_folder=specific_folder+"/edges_"+foldername
    if not os.path.exists(edges_folder):
        os.mkdir(edges_folder)
    # folder for all nodes of a specific testcase
    nodes_folder=specific_folder+"/nodes_"+foldername
    if not os.path.exists(nodes_folder):
        os.mkdir(nodes_folder)
    return root_folder