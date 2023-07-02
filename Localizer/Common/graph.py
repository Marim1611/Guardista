from graphviz import Digraph
import copy
import json
from time import time


class Node:
    def __init__(self):
        self.inEdges = []                       #ID of nodes coming into this node
        self.outEdges = []                      #ID of nodes going out of this node
        self.ID = 0                             #ID is an integer (unique integer for each node)
        self.degree = (0,0)                     #Degree of a node is a tuple of number of in-edges and number of out-edges, degree of (2,3) means 2 in-edges and 3 out-edges
        self.label = ""                         #Label of the basic block / node
    
    def initNode(self, iEdges, oEdges, id, label):                      #initializer
        self.inEdges = iEdges
        self.outEdges = oEdges
        self.ID = id
        self.degree = (len(iEdges), len(oEdges))
        self.label = label

    def insert_to_InEdges(self, ID):                                     #will always use those functions to insert/delete edges as they recompute the degree implicitly
        self.inEdges.append(ID)
        self.degree = (len(self.inEdges), len(self.outEdges))
    
    def insert_to_OutEdges(self, ID):
        self.outEdges.append(ID)
        self.degree = (len(self.inEdges), len(self.outEdges))
    
    def remove_from_InEdges(self, ID):
        self.inEdges.remove(ID)
        self.degree = (len(self.inEdges), len(self.outEdges))

    def remove_from_OutEdges(self, ID):
        self.outEdges.remove(ID)
        self.degree = (len(self.inEdges), len(self.outEdges))
    

        
    def __eq__(self, otherNode) -> bool:
        if(self.degree == otherNode.degree and self.ID == otherNode.ID):#and self.inEdges == otherNode.inEdges and self.outEdges== otherNode.outEdges):
            return True
        return False
    

    def __repr__(self) -> str:                           #just for pretty printing
        outstring = ""
        outstring = "Node "+ str(self.ID) + " of degree " + str(self.degree) + "\nlabel: "+ self.label+ "\nin Nodes: " + str(self.inEdges) + "\nout Nodes: " + str(self.outEdges)
        return outstring
        
    



class Graph:
    def __init__(self):
        self.innerNodes = []                            #array of nodes
        self.Name = ''

   
    def insertNode (self, node:Node):
        self.innerNodes.append (node)
    
    def __repr__(self) -> str:                      #just for pretty printing
        returned_string = "\n================= GRAPH ======================="
        for n in self.innerNodes:
            returned_string += n.__repr__() + "\n"
        returned_string += "-------------------------------------------------\n"
        return returned_string

    
    def mergeNodes (self, node1, node2, givenIDs = False):
        '''
        this function takes two nodes (as objects) or 2 IDs of those nodes, then merges them into only 1 node having the ID and label of node1, then fixes the edges
        if you will give the two nodes as objects then set givenIDs = False
        if you will give the two nodes as IDs then set givenIDs = True

        this function MAKES the output merged node have no cycles and the output node behaves the same as the previous two nodes
        '''

        if(givenIDs):
            node1, node2 = self.getNodeFromID(node1), self.getNodeFromID(node2)

        #Sanity Checks
        if(not self.IsParentOrChild(node1, node2)):
            print(f"Nodes are not Neighbours, operation Terminated")
            return False
        
        #remove the second node, keep only the first node
        self.innerNodes.remove(node2)
        
        #put all edges of the second node (the removed one) into the first node
        for e in node2.inEdges:
            if e not in node1.inEdges:
                node1.insert_to_InEdges(e)
        for e in node2.outEdges:
            if e not in node1.outEdges:
                node1.insert_to_OutEdges(e)
        
        #to fix the cycles and the edges of the other nodes in the graph
        self.fixOtherNodeEdges(node1, node2)
        
        



    def fixOtherNodeEdges(self, node1, node2):
        '''
        this function takes node1 and node2 to be merged and fixes the edges of the other nodes in the graph
        if another node in the graph points to node2, we will make it point to node1
        if node2 points to another node in the graph, we will make node1 point to it instead of the deleted node2
        if another node has an InEdge of node2, we will change it to having an InEdge of node1 instead of the deleted node2

        finally, delete any edges in node1 causing cycles to and from node1
        '''

        #Sanity Check
        self.cleanUpDuplicates()

        #Fix other nodes' edges
        for n in self.innerNodes:
            if node2.ID in n.inEdges:
                n.remove_from_InEdges(node2.ID)
                n.insert_to_InEdges(node1.ID)
            if(node2.ID in n.outEdges):
                n.remove_from_OutEdges(node2.ID)
                n.insert_to_OutEdges(node1.ID)
        
        #Fix cycles in node1
        while node1.ID in node1.outEdges:
            node1.remove_from_OutEdges(node1.ID)
        while node1.ID in node1.inEdges:
            node1.remove_from_InEdges(node1.ID)
        while node2.ID in node1.outEdges:
            node1.remove_from_OutEdges(node2.ID)
        while node2.ID in node1.inEdges:
            node1.remove_from_InEdges(node2.ID)
        


    
    def IsParentOrChild (self, node1,node2) -> bool:
        '''
        returns True if both nodes are parent or child to each other and they are not the same node
        False otherwise

        this function is called before any merges happen
        '''
        if (node2.ID in node1.inEdges or node1.ID in node2.inEdges ) and (node1.ID != node2.ID):
            return True
        return False
    



    def vizualizeGraph(self, labels=False, title= None, saveGraph = False):
        '''
        using graphviz to vizualize the graph
        labels = False is set to False whenever we want to see IDs of the nodes instead of their labels (the label is not humane)
        title is set as any graph title you want (good for outputting multiple graphs at a time and prevent overwriting)

        the Defualt is just self.vizualizeGraph()
        '''
        self.cleanUpDuplicates()
        name = title if title else "CFG"

        if(labels):

            gra = Digraph()

            for n in self.innerNodes:
                gra.node(str(n.ID),label = str(n.label), shape="rectangle")
            for n in self.innerNodes:
                for e in n.outEdges:
                    gra.edge(str(n.ID), str(e))

            gra.format = 'png'
            
            
        else:
            gra = Digraph()

            for n in self.innerNodes:
                gra.node(str(n.ID), shape="rectangle")
            for n in self.innerNodes:
                for e in n.outEdges:
                    gra.edge(str(n.ID), str(e))

            gra.format = 'png'
        

        gra.attr(label=name)
        if(saveGraph):
            gra.render(name, view = True)


    def readGraphFromJSON (self, jsonPath):
        '''
        this function takes the json of Mariem for a CFG of a function and parses the graph from it,
        works for a sigle json only and parses a single graph only
        '''
        with open(jsonPath) as f:
            jsonData = json.load(f)

        allNodes = jsonData["nodes"]
        self.Name = jsonData['function_name']

        self.innerNodes = []

        counter = 1
        for nodeDict in allNodes:
            newNode = self.checkNodeExistsFromLabel(nodeDict["label"])
            if(not newNode):
                newNode = Node()
                ID = counter
                counter += 1
                newLabel = nodeDict["label"]
                newNode.initNode([], [], ID, newLabel)
                self.innerNodes.append(newNode)

            label_Of_out_Edges = []
            for outEdg in nodeDict["edges_out"]:
                label_Of_out_Edges.append(outEdg["target_id"])

            for lab in label_Of_out_Edges:
                someOtherNewNode = self.checkNodeExistsFromLabel(lab)
                if(not someOtherNewNode):
                    someOtherNewNode = Node()
                    newID = counter
                    counter += 1
                    somenewLabel = lab
                    someOtherNewNode.initNode([], [], newID, somenewLabel)
                    self.innerNodes.append(someOtherNewNode)
                
                someOtherNewNode.insert_to_InEdges(newNode.ID)
                newNode.insert_to_OutEdges(self.checkNodeExistsFromLabel(lab).ID)
        
        self.cleanUpDuplicates()
            

    
    def printNodes(self):
        '''
        pretty print nodes
        '''
        for n in self.innerNodes:
            print(n, "\n")
    
    def cleanUpDuplicates(self):
        '''
        I noticed some nodes have duplicate edges which makes vizualizing them in graphviz a menace.
        this function just eliminates them
        '''
        for i,n in enumerate(self.innerNodes):
            n.inEdges = list(set(n.inEdges))
            n.outEdges = list(set(n.outEdges))



    
    def checkNodeExistsFromLabel (self, Label):
        '''
        takes a label and returns the node object, False if not found
        '''
        for n in self.innerNodes:
            if n.label == Label:
                return n
            
        #print(f"Node {Label} does not exist yet.")
        return False

    def checkNodeExistsFromID (self, ID):
        '''
        takes the ID of the node and returns the node object, False if not found
        '''
        for n in self.innerNodes:
            if n.ID == ID:
                return n
        #print(f"Node {ID} does not exist yet.")
        return False




    def getNodeFromID (self, IDi):
        '''
        takes ID of the node and returns the node object, False if not found
        '''
        for n in self.innerNodes:
            if n.ID == IDi:
                return n
        #print(f"Node {IDi} not found !")
        return False
    
    def getIndexOfNodeFromID (self, ID):
        '''
        takes ID of the node and returns its index inside the array of nodes of the graph, False if not found
        '''
        for i,n in enumerate(self.innerNodes):
            if n.ID == ID:
                return i
        #print(f"Node {ID} not found !")
        return False
    
    def getLabelFromID (self, ID):
        '''
        takes ID of a node and returns its label, False if not found
        '''
        for n in self.innerNodes:
            if n.ID == ID:
                return n.label
       # print(f"Node {ID} not found !")
        return False





def checkTwoNodes (srcGraph: Graph, dstGraph: Graph, srcNode : Node, dstNode:Node) ->bool :
    '''
    this function checks if the given 2 nodes are equivalent or not.
    it first checks the degree of both nodes, then checks the degree of the parents of both nodes, then checks the degree of the children of both nodes.
    outputs False if any of those checks failed

    srcGraph: is the source graph which is stored in a database with us
    dstGraph: is the user graph which we are trying to match with srcGraph

    srcNode: is a particular node in our srcGraph
    dstNode: is a particular node in dstGraph
    '''

    #First check degree of those immediate nodes
    if (srcNode.degree != dstNode.degree):
        return False
    
    #Second check degree of Parents of both Nodes (degrees of inEdges)
    for edge1 in srcNode.inEdges:
        degrees_of_Parents_of_Node2 = []
        for edge2 in dstNode.inEdges:
            degrees_of_Parents_of_Node2.append(dstGraph.getNodeFromID(edge2).degree)
        
        if(not(srcGraph.getNodeFromID(edge1).degree in degrees_of_Parents_of_Node2)):
            return False
        
    #Third check degree of Children of both Nodes (degrees of outEdges)
    for edge1 in srcNode.outEdges:
        degrees_of_Children_of_Node2 = []
        for edge2 in dstNode.outEdges:
            if(dstGraph.getNodeFromID(edge2)):
                degrees_of_Children_of_Node2.append(dstGraph.getNodeFromID(edge2).degree)
            else:
                return False
        
        if(not(srcGraph.getNodeFromID(edge1).degree in degrees_of_Children_of_Node2)):
            return False
        
    return True
    

def checkTwoGraphs (srcGraph:Graph , dstGraph:Graph)->bool:
    '''
    for each pair of nodes in the srcGraph and dstGraph, check those nodes for equivalence
    outputs True if there was equivalence between all nodes of both srcGraph and dstGraphs
    False if not such mapping exists

    this function takes only 2 graphs at a snapshot without applying any transformation to dstGraph
    '''
    for srcNode in srcGraph.innerNodes:
        unFound = True
        for dstNode in dstGraph.innerNodes:
            if(checkTwoNodes(srcGraph, dstGraph, srcNode, dstNode)):
                unFound = False
                break
        if(unFound):
            return False
    
    return True



def copyNode(nd:Node)->Node:
    '''
    shallow copying a single node
    '''
    retNode = Node()
    newIn = nd.inEdges.copy()
    newOut = nd.outEdges.copy()
    retNode.initNode(newIn, newOut, copy.copy(nd.ID), copy.copy(nd.label))
    return retNode

def copyGraph(gr: Graph)->Graph:
    '''
    shallow copying a single graph
    '''
    retGraph = Graph()
    for n in gr.innerNodes:
        retGraph.insertNode(copyNode(n))
    return retGraph



#TODO print a message of Timeout
def matchTwoGraphs(srcGraph:Graph , dstGraph:Graph, found = False, timeLimit=None, t1 = None, t2=None, timeout=False)->bool:
    '''
    solves the isomorphism problem by trying different merges and transformations on dstGraph then check if the resulted graph matches srcGraph or not.
    it is HEAVILY COMPUTATIONALLY INTENSIVE
    it recursively tries all possible merges and transformations until we find a transformation with a match, then we return true. otherwise False.
    '''

    
    #in each iteration, update time
    t2 = time()

    if(timeLimit and t2 - t1 >= timeLimit):
        #print(f"Time OUT during Matching both graphs")
        timeout=True
        return False, True

    #first, check both graphs and early stopping conditions
    if(len(dstGraph.innerNodes) <=2 or len(dstGraph.innerNodes) < len(srcGraph.innerNodes)):
        return False, False
    
    if(checkTwoGraphs(srcGraph, dstGraph)):
        found = True
        return True, False
    
    found = False
    for n1 in dstGraph.innerNodes:
        for n2 in dstGraph.innerNodes:            
            if (dstGraph.IsParentOrChild(n1, n2) and n1.ID != n2.ID):
                
                #print(n1.ID, n2.ID , len(dstGraph.innerNodes))                            # DEBUG
                newGraph = copyGraph(dstGraph)
                #newGraph.vizualizeGraph( title=f"{n1.ID} and {n2.ID} merged_BEFORE")         # DEBUG
                newGraph.mergeNodes(newGraph.getNodeFromID(n1.ID), newGraph.getNodeFromID(n2.ID))
                
                #newGraph.vizualizeGraph( title=f"{n1.ID} and {n2.ID} merged_AFTER")                  # FOR DEBUGGING
                found,_ = matchTwoGraphs(srcGraph, newGraph, found, timeLimit, t1= t1, t2 = t2, timeout=timeout)
                if (timeout):
                    return found, True
                elif(found):
                    return found, False
    
    if(timeout):
        return found, True
    else:
        return found, False
    





def matchGraphWithListOfGraphs (UserGraph, ListOfStoredGraphs, Names=None,timeLimit=None, otherWayAround=False)->str:
    '''
    this function takes the graph of User Code
    and a list of graphs (should be stored with us)
    otherWayAround is a flag whether or not you want to try switching both src and dst Graphs. it is better to leave it as False to avoid False Positives
    returns the name of the User function and the name of the stored function it matched with, or False otherwise
    '''
    output = []
    for gr in ListOfStoredGraphs:
        if gr.Name not in Names:
            continue 
        #gr.vizualizeGraph(title="original", saveGraph=True)
        #UserGraph.vizualizeGraph(title="other", saveGraph=True)
        startTime = time()
        match_or_not, Timeout = matchTwoGraphs(gr, UserGraph, timeLimit=timeLimit, t1=startTime)
        if(match_or_not and not Timeout):
            output.append( (UserGraph.Name, gr.Name))
        if(otherWayAround):
            startTime = time()
            match_or_not, Timeout = matchTwoGraphs(UserGraph, gr, timeLimit=timeLimit, t1=startTime)
            if (match_or_not and not Timeout):
                output.append( (UserGraph.Name, gr.Name))
    return output