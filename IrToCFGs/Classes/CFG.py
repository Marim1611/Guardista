import sys; sys.path.append('../')
from Classes.edge import edge

class CFG:
    #optional attributes for subgraphs only
    calls=[]
    entry_ID=""
    function_id=""
    function_name=""
    
    def __init__(self,nodes, edges,calls):
        self.nodes = nodes # dictionary of nodes to be accessed by their ID easily
        self.edges = edges # list of edges
        self.calls = calls # list of calls

    def add_edge(self, source, target):
        new_edge= edge(source, target)
        self.edges.append(new_edge)

    def set_entry(self, entry):
        self.entry_ID = entry

    def set_function_name_id(self, function_id, function_name):
        self.function_id = function_id
        self.function_name = function_name
    
    def get_graph_dict(self):
        graph_dict=dict()
        graph_dict["entry_node_id"]=self.entry_ID
        graph_dict["function_name"]=self.function_name
        graph_dict["function_id"]=self.function_id
        graph_dict["nodes"]=[]
        graph_dict["calls"]=self.calls
        for k in self.nodes.keys():
            graph_dict["nodes"].append(self.nodes[k].get_node_dict())
            
        return graph_dict

