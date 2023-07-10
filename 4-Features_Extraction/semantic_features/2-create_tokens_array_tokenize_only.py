import os
import sys
from shutil import rmtree
from LLNormalizer import *
import numpy as np
from tqdm import tqdm
import multiprocessing
from time import time
from CodePreprocessing import *


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
                exit()
            # out = Normalize_Tokenize_LLVM(data, True)
            # outputNumpy.append(np.asarray(out, dtype=object))

            fn_names,fn_body = functions_preprocessing(filepath, 'output_json.json', False)
            tokens_string = ''.join(fn_body)
            outputNumpy.append(tokenizeLLVM(tokens_string, True))

    with open(str(os.path.join(outpath, cwe,'tokens_array_'+str(i)))+'.npy', 'wb') as f:
        np.save(f, np.asarray(outputNumpy, dtype=object), allow_pickle=True)
            #return np.asarray(out, dtype=object)


def create_tokens_array(train_files_path, out_path, cwe):

    startTime = time()
    tokens_array = []
    allFilePaths = os.listdir(train_files_path)
    allFilePaths = [os.path.join(train_files_path, i) for i in allFilePaths]

    allArguments_for_all_threads = []


    batch_size = 50

    # Split the list of file paths into batches of 100
    batches = [allFilePaths[i:i+batch_size] for i in range(0, len(allFilePaths), batch_size)]
    if(len(batches[-1]) != batch_size):
        batches = batches[:-1]
    print(len(batches))
    for i, batch in enumerate(batches):
        arguments_per_one_thread = ([batch], i, out_path, cwe)
        allArguments_for_all_threads.append(arguments_per_one_thread)
    # for filename in os.listdir(train_files_path):
    #     FilePath = [os.path.join(train_files_path, filename)]
    #     allFilePaths.append(FilePath)
    
    cpuCores = multiprocessing.cpu_count()
    if(cpuCores < 2):
        p = multiprocessing.Pool(cpuCores)
    else: p = multiprocessing.Pool(cpuCores-2)
    
    results = p.starmap(Tokenizing_Job_Per_Thread, allArguments_for_all_threads)
    #tokens_array = np.asarray(results, dtype=object)

    #print(len(tokens_array))
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

    if not os.path.exists(out_path+"/"+cwe):
        os.mkdir(out_path+"/"+cwe)


    tokens_array = create_tokens_array(train_files_path, out_path, cwe)

    # with open(out_path+'/tokens_array_'+cwe+'.npy', 'wb') as f:
    #    np.save(f, tokens_array)
