import os
import shutil

'''
General Note: This script works for dataset that is resulted from a static analysis tool and has its binary files
General Note: PLEASE PLACE THE SCRIPT IN THE SAME DIRECTORY AS code_binaries

Run using: python extractBinaries.py

output: binaries extracted from each folder and placed in derivatives directory

'''

for currentpath, folders, files in os.walk(os.getcwd()+'\code_binaries\data'):
    for file in files:
        if 'derivatives' in currentpath:
            src_path = os.path.join(currentpath,file)
            dst_path = currentpath.split('\derivatives')[0] + '\derivatives'
            if 'source' in dst_path:
                continue 
            try:
                shutil.copy(src_path, dst_path)
                print("copied in ", dst_path, "successfully")
            except:
                print("Error occurred while copying file.")
            
