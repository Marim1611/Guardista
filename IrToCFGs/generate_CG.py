'''
This script construct call graphs for all IR files in the directory

**  How to run?
    Be in the same directory of this script and run the following command:
    python generate_CG.py <folder name> <path>

**  folder name is the absolute Path of the folder containing IR files
    this folder is --a-s-s-u-m-e-d- -t-o- -e-x-i-s-t- -i-n- -t-h-e- -s-a-m-e- -d-i-r-e-c-t-o-r-y- -o-f- -t-h-i-s- -s-c-r-i-p-t--  

**  path is the absolute path you want to store the CGs in 

'''
from utils import *
import os
from construct_graph import *
from generate_files import *

CURRENT_PATH=(os.path.dirname(os.path.abspath(__file__))).replace("\\","/")

def generate_CG(directory,folder_name,path):
    ''' 
     this function constructs call graphs CGs for all IR files in the directory
    '''
    lines=[]
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the position of the function in the file
    function_names=[]
    function_vulns=[] # list of lists of vulnerabilities for each function
    temp_nodes={} # temporary dictionary of nodes for each function
    nodes={} # dictionary of nodes for all functions
    temp_calls=[]
    calls=[] # list of all calls in the CFG tuples (called function_name, source_node_id, calling function name)
    functions_entry={} # dict to access the entry node of each function easily by its name
    for filename in os.listdir(directory):
        #----- clear all data structures for the new file----------
        functions_lines={} 
        function_names.clear()
        temp_nodes={} 
        nodes={}
        temp_calls.clear()
        calls=[] 
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
        #----- construct dict of nodes for each function
        CGs=dict()
        for i in range(len(calls)):
            CGs[i]=calls[i]
        #----- prepare directory to store the CGs
        root_folder=path+"/"+folder_name+"_CGs/"
        # root folder for all graphs
        if not os.path.exists(root_folder):
            os.mkdir(root_folder) 
        file_path=path+"/"+folder_name+"_CGs/"+filename+"_CG.json"
        create_json(CGs,file_path)

#AYMAN : just passed the abs path of the input folder and extract its name from the abs path :/
folder_path=sys.argv[1]
folder_name = re.split(r'[/\\]', folder_path)[-1]
path=sys.argv[2]

generate_CG(folder_path,folder_name,path)