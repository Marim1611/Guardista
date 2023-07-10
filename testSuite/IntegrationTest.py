import os
import sys
from subprocess import run, DEVNULL
import shutil
import pandas as pd
import numpy as np
import json
import re
from tqdm import tqdm

TESTING_FOLDER_PATH = os.path.split(os.path.realpath(__file__))[0]
GUARDISTA_PATH = os.path.split(TESTING_FOLDER_PATH)[0]
PIPELINE_PATH = os.path.join(GUARDISTA_PATH, 'mainPipeline.py')
TEST_SET_PATH_VULN = os.path.join(TESTING_FOLDER_PATH, 'Test_Set', 'vulnerable')
TEST_SET_PATH_SAFE = os.path.join(TESTING_FOLDER_PATH, 'Test_Set', 'safe')



Vuln_Test_Result_DF = pd.DataFrame()
i = 0
for testFile in tqdm(os.listdir(TEST_SET_PATH_VULN), desc='Testing on each exe in the Vuln test set'):
    testFile_Full_path = os.path.join(TEST_SET_PATH_VULN, testFile)
    newFolerPath = os.path.join(TEST_SET_PATH_VULN, 'tmp')

    testFile_tmp_path = os.path.join(newFolerPath, testFile)

    if(os.path.isdir(newFolerPath)):
        shutil.rmtree(newFolerPath)
    
    os.mkdir(newFolerPath)
    shutil.copyfile(testFile_Full_path, testFile_tmp_path)


    run(['python', PIPELINE_PATH, newFolerPath, 'false', newFolerPath,'false'], stdout=DEVNULL)

    test_case_result_dict = {'fileName':testFile}

    with open (os.path.join(newFolerPath, 'App2Result.json'), 'r') as f:
        test_case_result_dict.update(json.load(f))
    
    True_label = re.findall('\d+', testFile)[0]
    test_case_result_dict['Label'] = [True_label]
    Vuln_Test_Result_DF = pd.concat([Vuln_Test_Result_DF, pd.DataFrame(test_case_result_dict, index=[0])], ignore_index=True)
    i+=1


    Vuln_Test_Result_DF.to_csv('Vuln_Test_Results.csv', index=False)

