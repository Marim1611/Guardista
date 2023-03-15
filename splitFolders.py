import os
import shutil

''' 
General Note: This script works for dataset that is resulted from a static analysis tool and has its binary files
General Note: PLEASE PLACE THE SCRIPT IN THE SAME DIRECTORY AS Data Integration

Run using: python splitFolders.py

output: One Binary and Multibinaries directories 
        oneBinary.txt and multiBinaries.txt files having names of folders that have one binary and more than one binary respectively

'''


# ---------------- One binary per directory --------------- 

with open("oneBinary.txt","w") as f:
    for currentpath, _, files in os.walk(cd+'\Data Integration'):
            if len(files) ==2: 
                f.write(currentpath.split('Integration\\')[1]+"\n")


if not os.path.exists(os.getcwd()+'\One Binary'):
    os.mkdir(os.getcwd()+'\One Binary')
    
with open("oneBinary.txt") as f:
    for folder in f.readlines():
        folder= folder.rstrip('\n')
        path= os.path.join(os.getcwd()+'\one Binary', folder)
        os.mkdir(path)

with open("oneBinary.txt") as f:
        for folder in f.readlines():
            folder= folder.rstrip('\n')
            dst_path= os.path.join(os.getcwd()+'\one Binary', folder)
            src_path= os.path.join(os.getcwd()+'\Data Integration', folder)
            try:
                for file in os.listdir(src_path):
                    src= os.path.join(src_path, file)
                    shutil.copy(src, dst_path)
                    print("Copied to ", dst_path, "successfully.")
            except Exception as e:
                print(e)


# ---------------- Multiple binaries per directory --------------- 

with open("multiBinaries.txt","w") as f:
    for currentpath, _, files in os.walk(os.getcwd()+'\Data Integration'):
            if len(files) >2: 
                f.write(currentpath.split('Integration\\')[1]+"\n")

if not os.path.exists(os.getcwd()+'\Multibinaries'):
    os.mkdir(os.getcwd()+'\Multibinaries')
    
with open("multiBinaries.txt") as f:
    for folder in f.readlines():
        folder= folder.rstrip('\n')
        path= os.path.join(os.getcwd()+'\Multibinaries', folder)
        os.mkdir(path)

with open("multiBinaries.txt") as f:
        for folder in f.readlines():
            folder= folder.rstrip('\n')
            dst_path= os.path.join(os.getcwd()+'\Multibinaries', folder)
            src_path= os.path.join(os.getcwd()+'\Data Integration', folder)
            try:
                for file in os.listdir(src_path):
                    src= os.path.join(src_path, file)
                    shutil.copy(src, dst_path)
                    print("Copied to ", dst_path, "successfully.")
            except Exception as e:
                print(e)
            