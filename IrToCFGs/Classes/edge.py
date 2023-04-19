
class edge:
    # edge is a link between two basic blocks
    source_id = None # source basic block
    target_id = None # target basic block
    #label = None #TODO feh label wla la2?
    def __init__(self, source, target):
        self.source_id = source
        self.target_id = target
 