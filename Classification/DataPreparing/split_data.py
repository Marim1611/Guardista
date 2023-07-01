import sys, os, random, json
import numpy as np
import shutil
from tqdm import tqdm
'''
this script moves a percentage of data files to a new folder to save them for testing

** How to run?
    python split_data.py <input path> <output path> <percentage>

input path: abs path of the folder containing the data files
output path: as path of the folder to save the test files in (if not exists, it will be created)
percentage: float number represents the percentage of the data files to be moved to the test folder

'''

in_path=sys.argv[1]
out_path=sys.argv[2]
percentage=sys.argv[3]

# count the number of files in the folder
folder_length=0
EmptyFiles = []
EmptyFilesToBeRemoved=[]
for file in tqdm(os.listdir(in_path)):
    JsonFilePath = f"{in_path}/{file}"
    # If the file is empty, delete it and put its name in a blacklist to be deleted from the edges folder
    with open (JsonFilePath, 'r') as f:
        if(json.load(f) == {}):
            EmptyFilesToBeRemoved.append(JsonFilePath.replace('\\', '/'))
            EmptyFiles.append(f"edges_{file[5:-5]}.csv")
        else:   folder_length +=1
for emptFile in EmptyFilesToBeRemoved:
    os.remove(emptFile)
# randomly choose the test files
test_files = random.sample(os.listdir(in_path), int(folder_length * float(percentage )))
# create the new path if not exists
if not os.path.exists(out_path):
    os.mkdir(out_path) 
# move the test files to the new path
for file in test_files:
    new_path = out_path+'/' + file
    old_path = in_path+'/' + file
    shutil.move(old_path, new_path)

#write the blacklist
with open ('EmptyFiles.txt', 'w') as f:
    f.write(','.join(EmptyFiles))
