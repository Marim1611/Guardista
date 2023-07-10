import os
import numpy as np
import pandas as pd
import sys


firstpath= sys.argv[1]
secondpath= sys.argv[2]
cve= sys.argv[3]


firstDf = pd.read_csv(firstpath, header=None, index_col=None)

print(f"len of DF1 = {len(firstDf)}")


secondDF= pd.read_csv(secondpath, header=None, index_col=None)

print(f"len of DF2 = {len(secondDF)}")

finalDF = pd.concat([firstDf, secondDF], axis=0, ignore_index=True)

finalDF.to_csv(f'Train_binary_{cve}.csv', header=False, index=False)


print(f"total length = {len(finalDF)}")