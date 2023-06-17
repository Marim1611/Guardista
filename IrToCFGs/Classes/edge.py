
class edge:
    # edge is a link between two basic blocks
    source_id = None # source basic block
    target_id = None # target basic block
    #label = None #TODO feh label wla la2?
    def __init__(self, source, target):
        self.source_id = source
        self.target_id = target
    
    def get_edge_dict(self):
        edge_dict=dict()
        edge_dict["source_id"]=self.source_id   
        edge_dict["target_id"]=self.target_id
        return edge_dict 
        