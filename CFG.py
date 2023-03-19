class CFG:
    # nodes ={}
    # edges= []
    #optional attributes for subgraphs only
    calls=[]
    entry_ID=""
    function_id=""
    function_name=""
    
    def __init__(self,nodes, edges,calls):
        #self.IR = IR
        self.nodes = nodes # dictionary of nodes to be accessed by their ID easily
        self.edges = edges # list of edges
        self.calls = calls # list of calls
    def construct_basic_blocks(self):
        #TODO
        pass
    def add_edge(self, source, target):
        #TODO
        new_edge= edge(source, target)
        self.edges.append(new_edge)
    def set_entry(self, entry):
        self.entry_ID = entry
    def set_function_name_id(self, function_id, function_name):
        self.function_id = function_id
        self.function_name = function_name

class node:
    # node is a basic block 
    instructions = [] # list of instructions forming the basic block
    label = None # TODO label of the basic block (address of the label)
    ID="" # generated by the tool for each node in each subgraph  
    edges_out = [] # list of edges leaving the basic block
    edges_in = [] # list of edges entering the basic block
    # they are needed only to concatenate the subgraphs from the tool
    is_entry = False # is the node entry of a function
    is_exit = False # is the node exit of a function
    function_name = None 
    function_id = None 

    def __init__(self, id, label, is_entry, is_exit,edges_in, edges_out,instructions):
        self.ID =id #TODO remove this
        self.label = label
        self.is_entry = is_entry
        self.is_exit = is_exit
        self.edges_in = edges_in
        self.edges_out = edges_out
        self.instructions = instructions
    # def add_edges_out(self, edge):
    #     self.edges_out.append(edge)
    # def add_edges_in(self, edge):
    #     self.edges_in.append(edge)
    def get_ID(label):
        #TODO
        pass
class edge:
    # edge is a link between two basic blocks
    source_id = None # source basic block
    target_id = None # target basic block
    #label = None #TODO feh label wla la2?
    def __init__(self, source, target):
        self.source_id = source
        self.target_id = target
 