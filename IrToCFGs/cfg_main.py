'''
This script is the main script for CFG construction
it converts IR files to CFGs as nodes in JSON format and edges in CSV format

**  How to run?
    Be in the same directory of this script and run the following command:
    python cfg_main.py <flag> <foldername>

**  flag = 1 if you have one folder containing IR files
    flag = 0 if you have folder contains multiple sub folders containing IR files

**  folder name is the name of the folder containing IR files or contains multiple sub folders containing IR files
    this folder is assumed to exist in the same directory of this script

'''

import os
import sys; sys.path.append('../../')
from Classes.CFG import CFG
from generate_files import *
from construct_graph import *
from utils import *

# apply for all IR files in the directory 
def generate_graphs(directory,testcase_name):
    ''' 
     this function constructs CFG for all IR files in the directory
    '''
    lines=[]
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the position of the function in the file
    function_names=[]
    function_vulns=[] # list of lists of vulnerabilities for each function
    temp_nodes={} # temporary dictionary of nodes for each function
    nodes={} # dictionary of nodes for all functions
    temp_calls=[]
    calls=[] # list of all calls in the CFG tuples (called function_name, source_node_id, calling function name)
    edges=[]
    functions_entry={} # dict to access the entry node of each function easily by its name
    for filename in os.listdir(directory):
        #----- clear all data structures for the new file----------
        functions_lines={} 
        function_names.clear()
        temp_nodes={} 
        nodes={}
        temp_calls.clear()
        calls=[] 
        edges=[]
        functions_entry={} 
        lines.clear()
        #------------------------------------
        f = os.path.join(directory, filename)
        # checking if it is a file
        if os.path.isfile(f):
           #Dict contains each function lines with key as index 0,1,2 .. representing its position in the file
            functions_lines, function_names,function_vulns= extract_functions(directory+'/'+filename) # print file name
            functions_lines=handle_switch(functions_lines)
            # construct node for all functions in the file & gathering all the calls
            for key in functions_lines:
                temp_nodes, temp_calls,function_entry= construct_nodes(functions_lines[key], key , function_names[key],function_vulns[key] )
                functions_entry[function_entry[0]]=function_entry[1]
                nodes.update(temp_nodes)
                calls+=temp_calls
            #---- construct edges for the nodes 
            edges = construct_edges(nodes,calls)
            call_edges, nodes = connect_functions(nodes , calls,functions_entry)
            edges.extend(call_edges)
            #----- create new dict with keys are number IDs not string labels
            new_nodes=convert_labels_to_IDs(nodes)   
            root_folder=prepare_directories(testcase_name)       
            prepare_json(new_nodes,filename, testcase_name,root_folder)
            #----- store edges in csv file
            create_dataFrame(edges,filename,new_nodes,testcase_name,root_folder) 
            #----- store the whole graph in graph object
            final_CFG=CFG(nodes,edges,calls)
           


#pass the folder name that contains the IR files
one_folder=sys.argv[1]
folder_name=sys.argv[2]
current_path=(os.path.dirname(os.path.abspath(__file__))).replace("\\","/")
# one folder contains IR files
if one_folder == "1":
    generate_graphs(current_path+"/"+folder_name, folder_name)
# folder contains sub folders of IR files
elif one_folder == "0":
    for subfolder in os.listdir(current_path+"/"+folder_name):
        generate_graphs(current_path+"/"+folder_name+"/"+subfolder,subfolder)


