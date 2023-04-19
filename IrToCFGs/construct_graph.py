'''
how to run?
python construct_CFG.py <foldername containing IR files>
folder is assumed to exist in the same directory as this file

'''
# import node file from classes folder
import sys; sys.path.append('../../')
from Classes.node import node
from Classes.edge import edge
import re
from uuid import uuid4

def construct_nodes(lines,function_id, function_name,function_vuln):
    '''
    this function stores the nodes' data for each function
    input: lines of the function, id and name of the function, list of vulnerability IDs in the function
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
       
        #4------------- end of a node (basic block)
        node_end_found=re.search("( ret| br| switch | unreachable| resume).*", line)
       
        # when reaching end of the basic block store the node data
        if node_end_found:
            #----create object for the new node and add it to the dictionary
            nodes[label]= node("",label, is_entry,False,[], [],IRs)
            nodes[label].function_id=function_id
            nodes[label].function_name=function_name
            #--- check if the node is vulnerable
            if len(function_vuln)>0:
                nodes[label].vulnerable=True
                nodes[label].vulns_IDs=function_vuln
            # nodes[label].vulnerable=True if len(function_vuln)>0 else False
            # nodes[label].vulns_IDs=function_vuln if len(function_vuln)>0 else []
            #--- reset variables
            IRs=[]
            node_start=False
            label=""
            is_entry=False
            node_end_found=None
    
    return nodes ,calls,function_entry
        
#---------------------------------------------------------------------
def construct_edges (nodes,calls):
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
                new_edge= edge ( src, target)
                edges.append(new_edge)
                nodes[ID].edges_out.append(new_edge) 
        if ret_found:
            for call in calls:
                # in all calls find the call where the called function the function containing this ret instruction
                # connect it with all calling functions
                if call[0] == nodes[ID].function_name:
                    #get entry of calling function
                    target = call[1]
                    new_edge= edge (src, target)
                    edges.append(new_edge)
                    nodes[ID].edges_out.append(new_edge)
    return edges
#---------------------------------------------------------------------------------------------------------------------

     

