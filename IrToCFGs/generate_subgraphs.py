'''
This script converts IR files to sub CFGs for each function in the IR file
as graph objects written in JSON format 

**  How to run?
    Be in the same directory of this script and run the following command:
    python generate_subgraphs.py <flag> <path in> <path out> <foldername>

**  flag = 1 if you have one folder containing IR files
    flag = 0 if you have folder contains multiple sub folders containing IR files

**  path in is the abs path of the folder containing IR files or contains multiple sub folders containing IR files

**  path out is the abs path of the folder to store the output subgraphs

**  folder name is optional arg for naming the output folders, default "vuln"

'''

import os
import sys; sys.path.append('../../')
from Classes.CFG import CFG
from generate_files import *
from construct_graph import *
from utils import *
from tqdm import tqdm

sys.stdin.reconfigure(encoding='utf-8')
sys.stdout.reconfigure(encoding='utf-8')

# apply for all IR files in the directory 
def generate_subgraphs(directory,path_out,testcase_name):
    ''' 
     this function constructs CFG for all IR files in the directory
    '''
    lines=[]
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the position of the function in the file
    function_names=[]
    function_vulns=[] # list of lists of vulnerabilities for each function
    nodes={} # dictionary of nodes for all functions
    calls=[] # list of all calls in the CFG tuples (called function_name, source_node_id, calling function name)
    edges=[]
    objects_dict=dict()
    # for each file in the directory
    for filename in tqdm(os.listdir(directory)):
        #----- check if the file is IR file
        if not filename.endswith(".ll"):
            continue
        #----- clear all data structures for the new file----------
        functions_lines={} 
        objects_dict.clear()
        function_names.clear()
        nodes={}
        calls=[] 
        edges=[]
        lines.clear()
        #------------------------------------
        f = os.path.join(directory, filename)
        # checking if it is a file
        if os.path.isfile(f):
           #Dict contains each function lines with key as index 0,1,2 .. representing its position in the file
            functions_lines, function_names,function_vulns= extract_functions(directory+'/'+filename) # print file name
            functions_lines=handle_switch(functions_lines)
            # create folder to save the subgraphs of the current ir file
            root_folder=path_out+"/"+testcase_name+"_subgraphs/"
            # root folder for all graphs
            if not os.path.exists(root_folder):
                os.mkdir(root_folder)
            # construct node for all functions in the file
            for key in functions_lines:
                nodes, calls,function_entry= construct_nodes(functions_lines[key], key , function_names[key],function_vulns[key] )
                #----- create new dict with keys are number IDs not string labels
                new_nodes=convert_labels_to_IDs(nodes)    
                #---- construct edges for the nodes 
                edges = construct_edges(new_nodes,calls)
                #----- store the whole graph in graph object
                function_CFG=CFG(new_nodes,edges,calls)
                function_CFG.nodes=new_nodes
                function_CFG.function_name=function_names[key]
                function_CFG.function_id=key
                function_CFG.entry_ID=function_entry[1]
                function_CFG.calls=calls
                #----- store the graph object in dict with key as function name
                # objects_dict[function_names[key]]=function_CFG.get_graph_dict()
                
                #----- prepare directory to store the CGs
                name= re.search("\w+(?=\.ll)", filename)
                folder_path =root_folder +name[0]+"_subgraphs/"
                # root folder for all graphs
                if not os.path.exists(folder_path):
                    os.mkdir(folder_path) 
                file_path=folder_path+name[0]+"_subgraph"+str(key)+".json"
                create_json(function_CFG.get_graph_dict(),file_path)
                
            

           


#pass the folder name that contains the IR files
one_folder=sys.argv[1]
path_in=sys.argv[2]
path_out=sys.argv[3]

if len(sys.argv) > 4:
    folder_name=sys.argv[4]
else:
    folder_name="vuln"

# one folder contains IR files
if one_folder == "1":
    generate_subgraphs(path_in, path_out,folder_name)
# folder contains sub folders of IR files
elif one_folder == "0":
    for subfolder in tqdm(os.listdir(path_in)):
        generate_subgraphs(path_in+"/"+subfolder, path_out, subfolder)


