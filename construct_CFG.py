#!/usr/bin/env python
# coding: utf-8

# In[144]:


import os
import CFG as cfg
import re
from uuid import uuid4
import csv
import json
import copy
# python retdec-decompiler.py yourbinary.exe --stop-after bin2llvmir


# In[145]:


def print_nodes(nodes):
    #print node data in dictionary format
    print(len(nodes))
    for ID in nodes.keys():
        print("node data")
        print("label: ", nodes[ID].label)
        print("is_entry: ", nodes[ID].is_entry)
        print("is_exit: ", nodes[ID].is_exit)
        for ir in nodes[ID].instructions:
            print(ir)
        print("-----------------")


# In[146]:


def extract_functions(filename):
    '''
    this function take the IR file name passes through the its lines
    and returns a dictionary of all functions in the file and list of their names
    '''
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the position of the function in the file
    function_names=[]
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
                    start=True
                if start:
                    lines.append(line)
                
                end_found=re.search("^}$", line, re.MULTILINE)
                if end_found:
                    functions_lines[index]=lines
                    lines=[]
                    index+=1
                    start=False
                    if start_found:
#TODO exclude bracket from .+ 3shan da @mingw_set_invalid_parameter_handler(void (i16*, i16*, i16*, i32, i64) bytl3 el name kda @mingw_set_invalid_parameter_handler(void
                        temp=re.search("@.+(?=\()", start_found[0])
                    if temp:
                        function_names.append(temp[0])
                    else:
                        print(start_found[0])
    f.close()
    return functions_lines, function_names


# In[147]:


def construct_nodes(lines,function_id, function_name):
    '''
    this function stores the nodes' data for each function
    input: lines of the function, id and name of the function
    return a dictionary of nodes contains all basic blocks of the functions nodes' objects
    with all its data and a list of tuples contain all calls to other functions in this function
    '''
    nodes={}
    # data needed for each function and each node inside the function
    node_start=False
    IRs=[]
    # repeated names functions?
    calls=[] # list of tuples (function_name, source_node_id)
    label=""
    is_entry=False
    i=0
    function_entry=() # tuple to be stored in dict to access the entry node of each function easily by its name
   
    for line in lines:
        #1---------- start of a node (basic block)
        if not node_start:
           
            #node_start_found=re.search("(?<=^dec_label_pc_)[0-9a-z]+(?=:)", line)
            node_start_found=re.search("(?<=^dec_label_pc_).+(?=:)", line)
           
        if node_start_found:
            node_start=True
            label = node_start_found[0]
            if label == "45bcc0":
                print("ehhhh")

            node_start_found=None #3shan mad5olsh a-search kol mara 3la awl line 
            if i==0:
                is_entry=True #this the first basic block in the function
                function_entry=(function_name,label)                
                i+=1
                
            continue #TODO CHECK ANA SHLTHA 3SHAN MYSGLSH AWL IR (DEC LABEL..)
        #2-------- store IRs
        if node_start:    
            IRs.append(line)
            #3-------- store calls
            call_found=re.search("(?<=call ).+", line)
            if call_found:
                temp=re.search("@\w+(?=\()", call_found[0])
                if temp:
                    # called function name , source node label, calling function
                    calls.append((temp[0],label, function_name))
        # if "unreachable" in line:
        #     print("yoooooh") 
        #     print(line)     
        #     node_end_found=re.search("( ret| br| switch | unreachable| resume).*", line)
        #     print(node_end_found)
        #     print("******")
        #4------------- end of a node (basic block)
        node_end_found=re.search("( ret| br| switch | unreachable| resume).*", line)
       
        # when reaching end of the basic block store the node data
        if node_end_found:
                
            #----create object for the new node and add it to the dictionary
            nodes[label]=cfg.node("",label, is_entry,False,[], [],IRs)
            nodes[label].function_id=function_id
            nodes[label].function_name=function_name

            #--- reset variables
            IRs=[]
            node_start=False
            label=""
            is_entry=False
            node_end_found=None
    
    return nodes ,calls,function_entry
        
        
                


# In[148]:


def construct_edges (nodes,functions_entry,calls):
    '''
    this function takes the nodes dictionary and construct the edges between them
    take functions_entry to get entry node of the calling function
    take calls to get all calling function for any function to connect ret instructions
    return list of edge objects contains labels of source and target nodes (basic blocks)
    '''
    edges=[]
    #TODO need to handle other terminators
    for ID in nodes.keys():
        # the last instruction in the basic block is the branch
        # to guarantee that the node is not empty (sometimes store)
        if len(nodes[ID].instructions) ==0:
            continue
        
        ir = nodes[ID].instructions[-1]
        src =nodes[ID].label

        branch_found="br " or "switch " in ir #TODO need rejex?
        ret_found ="ret " in ir #TODO need rejex? 
        if branch_found:
            #TODO check rule of writing labels
            
            targets=re.findall("(?<=%dec_label_pc_)[0-9a-z\.]+(?=\W)", ir)
           
            for target in targets:
                new_edge= cfg.edge ( src, target)
                edges.append(new_edge)
                nodes[ID].edges_out.append(new_edge) 
        if ret_found:
            for call in calls:
                # in all calls find the call where the called function the function containing this ret instruction
                # connect it with all calling functions
               
                if call[0] == nodes[ID].function_name:
                    #get entry of calling function
                    target = call[1]
                    new_edge= cfg.edge (src, target)
                    edges.append(new_edge)
                    nodes[ID].edges_out.append(new_edge)
    return edges


# In[149]:


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
            new_edge= cfg.edge (src, target)
            call_edges.append(new_edge)
            nodes[call[1]].edges_out.append(new_edge)
            #TODO does we need to add edges in of the targets? i don't have their IDs
    
    return call_edges, nodes
        


# In[150]:


def create_dataFrame(edges,file_name):
    with open('edges/edges_'+file_name+'.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        for edge in edges:
            writer.writerow( [edge.source_id, edge.target_id])
        # file.close()


# In[151]:


def create_json(nodes, file_name):
    nodes_IRs={}
    for ID in nodes.keys():
        nodes_IRs[ID]=nodes[ID].instructions 
    jsonString = json.dumps(nodes_IRs)
    jsonFile = open('ir_nodes/json_'+file_name+".json", "w")
    jsonFile.write(jsonString)
    jsonFile.close()


# In[152]:


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


# In[153]:


# apply for all IR files in the directory 
def setup(directory):
    lines=[]
    functions_lines={} # store each function lines with key as index 0,1,2 .. representing the position of the function in the file
    function_names=[]
    temp_nodes={} # temporary dictionary of nodes for each function
    nodes={} # dictionary of nodes for all functions
    temp_calls=[]
    calls=[] # list of all calls in the CFG tuples (called function_name, source_node_id, calling function name)
    temp_edges=[]
    edges=[]
    functions_entry={} # dict to access the entry node of each function easily by its name
    for filename in os.listdir(directory):
        # print(filename)
        lines.clear()
        f = os.path.join(directory, filename)
        # checking if it is a file
        if os.path.isfile(f):
           #Dict contains each function lines with key as index 0,1,2 .. representing its position in the file
            functions_lines, function_names= extract_functions(directory+'/'+filename) # print file name
            functions_lines=handle_switch(functions_lines)
            for name in function_names:
                if name == "@_ZNSt11_Deque_baseI7OperandSaIS0_EED2Ev":
                    print("hola")
                    print(functions_lines)
             
        
            for key in functions_lines:

                temp_nodes, temp_calls,function_entry= construct_nodes(functions_lines[key], key , function_names[key])
               
                functions_entry[function_entry[0]]=function_entry[1]
                nodes.update(temp_nodes)
                calls+=temp_calls
          
            create_json(nodes,filename)
            edges = construct_edges(nodes,functions_entry,calls)
         
            call_edges, nodes = connect_functions(nodes , calls,functions_entry)
            edges.extend(call_edges)
            create_dataFrame(edges,filename) 

            final_CFG=cfg.CFG(nodes,edges,calls)
    return final_CFG
           
          
            
            


# In[154]:


#pass the folder name that contains the IR files
folder_name=input("=> folder name contains IR files")
setup(folder_name)

