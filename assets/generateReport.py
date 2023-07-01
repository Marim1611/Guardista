import pandas as pd
import numpy as np
import json
import sys
import re


allCWEs = pd.read_csv('1000.csv').to_dict()
with open ('classes.json', 'w') as f:
    json.dump(allCWEs, f, indent=6)

outputPath = sys.argv[1]


finalReport = {}
all_keys = list(allCWEs.keys())
print(all_keys)

try:
    classificationPath = str(outputPath+'/classification.txt').replace('\\', '/')
    with open (classificationPath, 'r') as f:
        content = f.readlines()
    classes = [re.sub('\n', '', i) for i in content]
    #print(allCWEs)
    

    for i in range(len(all_keys)):
        finalReport[all_keys[i]] = allCWEs[all_keys[i]][int(classes[0])]
        #print(allCWEs[all_keys[i]][int(classes[0])])
    
    

    

except:
    print('no classification.txt')



with open (outputPath+'/finalReport.json', 'w') as f:
    json.dump(finalReport, f, indent=6)