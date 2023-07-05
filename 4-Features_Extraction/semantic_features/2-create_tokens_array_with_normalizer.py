import os
import sys
from shutil import rmtree
from LLNormalizer import *
import numpy as np
from tqdm import tqdm
import multiprocessing
from time import time


def Tokenizing_Job_Per_Thread(files, i, outpath, cwe):   
    outputNumpy = []
    for filepath in tqdm(files[0]):
        #print(filepath)
        if os.path.isfile(filepath):
            # print(f)
            try:
                with open(filepath, 'r') as fi:
                    data = fi.read()
            except: 
                print('ERROR')
                # exit()
                return
            out = Normalize_Tokenize_LLVM(data, True)
            # outputNumpy.append(np.asarray(out, dtype=object))
            outputNumpy.append(out)

    with open(str(os.path.join(outpath, cwe,'tokens_array_'+str(i)))+'.npy', 'wb') as f:
        np.save(f, np.asarray(outputNumpy, dtype=object))



def create_tokens_array(train_files_path, out_path, cwe):

    startTime = time()

    allFilePaths = os.listdir(train_files_path)
    allFilePaths = [os.path.join(train_files_path, i) for i in allFilePaths]

    allArguments_for_all_threads = []

    batch_size = 100

    # Split the list of file paths into batches of 100
    batches = [allFilePaths[i:i+batch_size] for i in range(0, len(allFilePaths), batch_size)]
    # for batch in batches:
    #     print(len(batch))
    if(len(batches[-1]) != batch_size):
        batches = batches[:-1]
    print(len(batches))
    for i, batch in enumerate(batches):
        arguments_per_one_thread = ([batch], i, out_path, cwe)
        allArguments_for_all_threads.append(arguments_per_one_thread)
    
    cpuCores = multiprocessing.cpu_count()
    if(cpuCores < 2):
        p = multiprocessing.Pool(cpuCores)
    else: p = multiprocessing.Pool(cpuCores-2)
    
    results = p.starmap(Tokenizing_Job_Per_Thread, allArguments_for_all_threads)

    endTime = time()
    print(f"Time Taken is {endTime-startTime} seconds")
    return #tokens_array

#--------------------------------------------------------------------------------------------------------------------------------
if __name__ == '__main__':
    train_files_path = sys.argv[1]
    out_path = sys.argv[2]
    cwe = sys.argv[3]

    if not os.path.exists(out_path):
        os.mkdir(out_path)
    # else:
    #     rmtree(out_path)
    #     os.mkdir(out_path)

    if not os.path.exists(out_path+"/"+cwe):
        os.mkdir(out_path+"/"+cwe)

    tokens_array = create_tokens_array(train_files_path, out_path, cwe)

