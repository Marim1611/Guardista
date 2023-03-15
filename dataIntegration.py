import os
import shutil


'''
General Note: This script works for dataset that is resulted from a static analysis tool and has its binary files
General Note: PLEASE PLACE THE SCRIPT IN THE SAME DIRECTORY AS MatchedFolders.txt, code_binaries and
              Code+CVE\code_and_static_analyzer

Run using: python dataIntegration.py

output: Data Integration directory having matched folders each contains its binary files and its report.json

This script creates a folder named Data Integration in the current directory.
It then creates subfolders in Data Integration for each folder in MatchedFolders.txt.
           
'''


#------------------------ Create matched folders in Data Integration----------------------

if not os.path.exists(os.getcwd()+'\Data Integration'):
    os.mkdir(os.getcwd()+'\Data Integration')
    with open("MatchedFolders.txt") as f:
        for folder in f.readlines():
            folder= folder.rstrip('\n')
            path= os.path.join(os.getcwd()+'\Data Integration', folder)
            os.mkdir(path)

# --------------------------- COPY BINARIES -------------------------

cd= os.getcwd()

for currentpath, _, _ in os.walk(cd+'\code_binaries\data'):

    #check only derivatives folders
    if 'derivatives' not in currentpath:
        continue
    
    folder = currentpath.split('\data')[1].split('\derivatives')[0]

    src_path = currentpath.split('\derivatives')[0] + '\derivatives'
    dst_path = cd+'\Data Integration'+ folder

    if os.path.exists(dst_path):
        try:
            for file in os.listdir(src_path):
                src= os.path.join(src_path, file)
                if file.endswith('.exe') or file.endswith('.elf') or not os.path.splitext(file)[1]:
                    shutil.copyfile(src, dst_path)
                    print("Copied to ", dst_path, "successfully.")
        except Exception as e:
            print(e)

#------------------ COPY REPORT.JSON ---------------------

for currentpath, _, files in os.walk(cd+'\Code+CVE\code_and_static_analyzer\data'):
    if 'derivatives' not in currentpath:
        continue

    folder = currentpath.split('\data')[1].split('\derivatives')[0]

    dst_path = cd+'\Data Integration'+ folder

    if os.path.exists(dst_path):
        for file in files:
            if file=='report.json':
                try:
                    shutil.copy(os.path.join(currentpath,file), dst_path)
                    print("Copied to ", dst_path, "successfully.")
                except Exception as e:
                    print(e)                
                break


# #----------------- Checking the number of directories with no binaries ---------------------
# count=0
        
# with open("noBinaries.txt","w") as f:
#     for currentpath, _, files in os.walk(cd+'\Data Integration'):
#         if len(files) ==1: 
#             count+=1
#             f.write(currentpath.split('Integration\\')[1]+"\n")

# print("final counter= ", count) 



