

from graphviz import Digraph
import copy
import json


class Node:
    def __init__(self):
        self.inEdges = []        #ID of nodes coming into this node
        self.outEdges = []       #ID of nodes going out of this node
        self.ID = 0
        self.degree = (0,0)      #Degree of a node is a tuple of number of in-edges and number of out-edges, degree of (2,3) means 2 in-edges and 3 out-edges
        self.label = ""
    
    def initNode(self, iEdges, oEdges, id, label):
        self.inEdges = iEdges
        self.outEdges = oEdges
        self.ID = id
        self.degree = (len(iEdges), len(oEdges))
        self.label = label

    def __eq__(self, otherNode) -> bool:
        if(self.degree == otherNode.degree ):#and self.inEdges == otherNode.inEdges and self.outEdges== otherNode.outEdges):
            return True
        return False
    
    def insert_to_InEdges(self, ID):
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
    

        


    def __repr__(self) -> str:
        outstring = ""
        outstring = "Node "+ str(self.ID) + " of degree " + str(self.degree) + "\nlabel: "+ self.label+ "\nin Nodes: " + str(self.inEdges) + "\n out Nodes: " + str(self.outEdges)
        return outstring
        
    



class Graph:
    def __init__(self):
        self.innerNodes = []    #array of nodes


    def insertNode (self, node:Node):
        self.innerNodes.append (node)




    def mergeNodes (self, node1, node2):


        self.innerNodes.remove(node2)

        for e in node2.inEdges:
            if e not in node1.inEdges:
                node1.insert_to_InEdges(e)
        for e in node2.outEdges:
            if e not in node1.outEdges:
                node1.insert_to_OutEdges(e)
        self.fixOtherNodeEdges(node1, node2)



    def fixOtherNodeEdges(self, node1, node2):
        for n in self.innerNodes:
            if node2.ID in n.inEdges:
                n.remove_from_InEdges(node2.ID)
                n.insert_to_InEdges(node1.ID)
            if(node2.ID in n.outEdges):
                n.remove_from_OutEdges(node2.ID)
                n.insert_to_OutEdges(node1.ID)
        
        if node1.ID in node1.outEdges:
            node1.remove_from_OutEdges(node1.ID)
        if node1.ID in node1.inEdges:
            node1.remove_from_InEdges(node1.ID)
        if node2.ID in node1.outEdges:
            node1.remove_from_OutEdges(node2.ID)
        if node2.ID in node1.inEdges:
            node1.remove_from_InEdges(node2.ID)


    #Parent-Child Matrix is a matrix containing 1 in front of 2 Nodes which are parent or child to each other and 0 to other nodes
    def IsParentOrChild (self, node1,node2) -> bool:
        if node2.ID in node1.inEdges or node1.ID in node2.inEdges:
            return True
        return False
    



    def vizualizeGraph(self, labels=False):
        self.cleanUpDuplicates()
        if(labels):
            gra = Digraph()

            for n in self.innerNodes:
                gra.node(str(n.ID),label = str(n.label), shape="rectangle")
            for n in self.innerNodes:
                for e in n.outEdges:
                    gra.edge(str(n.ID), str(e))

            gra.format = 'png'
            gra.render('CFG', view = True)
        else:
            gra = Digraph()

            for n in self.innerNodes:
                gra.node(str(n.ID), shape="rectangle")
            for n in self.innerNodes:
                for e in n.outEdges:
                    gra.edge(str(n.ID), str(e))

            gra.format = 'png'
            gra.render('CFG', view = True)


    def readGraphFromJSON (self, jsonPath):
        with open(jsonPath) as f:
            jsonData = json.load(f)

        allNodes = jsonData["nodes"]

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
            
            print(newNode)
        
        self.cleanUpDuplicates()
            

    
    def printNodes(self):
        for n in self.innerNodes:
            print(n)
    
    def cleanUpDuplicates(self):
        for i,n in enumerate(self.innerNodes):
            n.inEdges = list(set(n.inEdges))
            n.outEdges = list(set(n.outEdges))




    
    def checkNodeExistsFromLabel (self, Label):
        for n in self.innerNodes:
            if n.label == Label:
                return n
            
        print(f"Node {Label} does not exist yet.")
        return False

    def checkNodeExistsFromID (self, ID):
        for n in self.innerNodes:
            if n.ID == ID:
                return n
        print(f"Node {ID} does not exist yet.")
        return False




    def getNodeFromID (self, ID):
        for n in self.innerNodes:
            if n.ID == ID:
                return n
        
        print(f"Node {ID} not found !")
        return False





def checkTwoNodes (srcGraph: Graph, dstGraph: Graph, srcNode : Node, dstNode:Node) ->bool :
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
            degrees_of_Children_of_Node2.append(dstGraph.getNodeFromID(edge2).degree)
        
        if(not(srcGraph.getNodeFromID(edge1).degree in degrees_of_Children_of_Node2)):
            return False
        
    return True
    

def checkTwoGraphs (srcGraph:Graph , dstGraph:Graph)->bool:

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

    retNode = Node()
    newIn = nd.inEdges.copy()
    newOut = nd.outEdges.copy()
    retNode.initNode(newIn, newOut, nd.ID, nd.label)
    return retNode

def copyGraph(gr: Graph)->Graph:
    retGraph = Graph()
    for n in gr.innerNodes:
        retGraph.insertNode(copyNode(n))

    return retGraph


def matchTwoGraphs(srcGraph:Graph , dstGraph:Graph)->bool:
    #first, check both graphs
    if(checkTwoGraphs(srcGraph, dstGraph)):
        return True
    
    found = False
    for n1 in dstGraph.innerNodes:
        for n2 in dstGraph.innerNodes:            
            if (dstGraph.IsParentOrChild(n1, n2)):
                print(n1.ID, n2.ID)
                newGraph = copyGraph(dstGraph)
                newGraph.mergeNodes(n1,n2)
                if(checkTwoGraphs(srcGraph, newGraph)):
                    found = True
                    break
    
    if (not found):
        return False
    





