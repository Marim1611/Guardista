import sys; sys.path.append('../../')
from Classes.edge import edge

import re


def extract_functions(filename):
    '''
    this function take the IR file name passes through its lines
    and returns a dictionary of functions in the file {index of function : [list of lines in the function]}
    '''
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the existence of the function in the file
    function_names=[]
    function_vulns=[] # store the vulnerability ID if exists
    lines=[] # temporary list of lines for each function
    start = False
    end=False
    index =0
    #loop on file lines
    with open(filename, 'r') as f:
        for line in f:
                # start storing lines withe the firs fuction
                if not start:
                    start_found=re.search("^define.+", line)
                    if start_found:
                        #---------store the vulnerability ID if exists
                        vuln_found=re.search(" CVE.+", line)
                        if vuln_found:
                            CVEs=re.findall("[0-9]+(?=,)", vuln_found[0])
                            function_vulns.append(CVEs)
                        else:
                            function_vulns.append([])
                        #------------------------------
                # to avoid checking define line every time 
                if start_found:
                    start=True
                   
                if start:
                    lines.append(line)
                #---- end of function
                end_found=re.search("^}$", line, re.MULTILINE)
                if end_found:
                    functions_lines[index]=lines
                    lines=[]
                    index+=1
                    start=False
                    #---- get the function name
                    if start_found:
#TODO exclude bracket from .+ 3shan da @mingw_set_invalid_parameter_handler(void (i16*, i16*, i16*, i32, i64) bytl3 el name kda @mingw_set_invalid_parameter_handler(void
                        temp=re.search("@.+(?=\()", start_found[0])
                    if temp:
                        function_names.append(temp[0])
                    # else:
                    #     print(start_found[0])
    f.close()
    return functions_lines, function_names,function_vulns

#----------------------------------------------------------------------

def connect_functions (nodes , calls,functions_entry):
    '''
    this function takes the nodes dictionary and the list of calls to other functions
    and connect the nodes of the current function to the nodes of the called functions
    return the extra list of edges and the  updated nodes dictionary 
    '''
    # print("function names")
    # print(functions_entry)
    call_edges=[]
    for call in calls:
        # (function_name, source_node_id)
        src=call[1]
        # the target node   is the entry node of the called function
        if call[0] in functions_entry.keys():
            target=functions_entry[call[0]]
            new_edge= edge (src, target)
            call_edges.append(new_edge)
            nodes[call[1]].edges_out.append(new_edge)
            #TODO does we need to add edges in of the targets? i don't have their IDs
    
    return call_edges, nodes

#--------------------------------------------------------------------------------------

def handle_switch(function_lines):
    '''
    this function takes dictionary of function lines ("function index" :[list of lines in the function])
    and handle the switch instructions by merging all the lines of the switch instruction in one line
    return the updated dictionary of function lines
    '''
    # handles switches in each function
    for i in function_lines.keys():
        switch_found=False
        new_ir=""
        temp_ir=function_lines[i].copy() # copy the list to iterate over it as we wil remove elements from the original list
        #store index of the switch instruction to store the whole switch instruction in one line in its correct index
        switch_index=-1 
        for ele in enumerate(temp_ir):
            if "switch " in ele[1] and not switch_found:
                switch_found=True
                switch_cut=ele[1]
                new_ir=ele[1]
                continue

            if switch_found:    
                function_lines[i].remove(ele[1])
                new_ir+=ele[1]
                #end of the switch instruction
                if "]" in ele[1]:
                    switch_found=False
                    function_lines[i]= list(map(lambda x: x.replace(switch_cut, new_ir), function_lines[i]))
                    new_ir=""
                    switch_cut=''
   
    return function_lines