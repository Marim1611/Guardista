import sys, os, random, re
import numpy as np
import shutil
'''
this script map the edges files to the test nodes files

** How to run?
    python move_edges.py  <test nodes path> <edges path> <test edges path>


test nodes path: abs path of the folder containing the test nodes files
edges path: abs path of the folder containing the edges files
test edges path: abs path of the folder to save the test edges files in (if not exists, it will be created)

'''
test_nodes_path=sys.argv[1]
edges_path=sys.argv[2]
test_edges_path=sys.argv[3]

#Read the Empty Files List
with open('EmptyFiles.txt', 'r') as f:
    EmptyFiles = f.read()
    EmptyFiles = re.split(',', EmptyFiles)

test_nodes_files=[]
for file in os.listdir(test_nodes_path):
    #store file name in list
    file=file[:-5]
    test_nodes_files.append(file[5:])

# create the new path if not exists
if not os.path.exists(test_edges_path):
    os.mkdir(test_edges_path) 
    
for file in os.listdir(edges_path):

    #if file is in the blackList, delete it and continue
    if file in EmptyFiles:
        os.remove(f"{edges_path}/{file}")
        continue

    # remove extension from file name
    file_temp=file[:-4]
    file_temp=file_temp[6:]
    #check if file is in test_nodes_files
    if file_temp in test_nodes_files:
        
        #move file to test_edges_path
        new_path = test_edges_path+'/' + file
        old_path = edges_path+'/' + file
        shutil.move(old_path, new_path)



