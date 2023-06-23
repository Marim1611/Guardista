'''
This script converts IR files to CFG as nodes in JSON format and edges in CSV format

**  How to run?
    Be in the same directory of this script and run the following command:
    python cfg_infer.py  <path_in> <path_out>

**  path_in is the abs path of the IR file
**  path_out is the abs path of the output file

'''

import os
import sys; sys.path.append('../../')
from Classes.CFG import CFG
from generate_files import *
from construct_graph import *
from utils import *
from tqdm import tqdm

# apply for all IR files in the directory 
def generate_graph(path_in,path_out):
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
    # extract filename from path
    filename=path_in.split('\\')[-1]
    #----- check if the file is IR file
    if not filename.endswith(".ll"):
        print("Not an IR file")
        return
    #------------------------------------
    f = os.path.join(path_in)
    # checking if it is a file
    if os.path.isfile(f):
        #Dict contains each function lines with key as index 0,1,2 .. representing its position in the file
        functions_lines, function_names,function_vulns= extract_functions(path_in) # print file name
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
        #-------- create new folder for the testcase
        if not os.path.exists(path_out+'/CFG_'+filename):
            os.mkdir(path_out+'/CFG_'+filename)

        prepare_json(new_nodes,file_name= filename, path=path_out+'/CFG_'+filename)
        #----- store edges in csv file
        create_dataFrame(edges,filename,new_nodes,path=path_out+'/CFG_'+filename) 
        #----- store the whole graph in graph object
        final_CFG=CFG(nodes,edges,calls)
        print("\nfile is converted to CFG successfully in the following path: "+path_out+'\CFG_'+filename) 
           


path_in=sys.argv[1]
path_out=sys.argv[2]

generate_graph(path_in,path_out)


