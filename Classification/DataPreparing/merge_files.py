'''
This script is used to merge two csv files into one csv file.

** How to run?
    python merge_files.py <input path1> <input path2> <output path>

input path1: abs path of the first csv file
input path2: abs path of the second csv file
output path: abs path of the output csv file with its name => Example: /home/marim/Desktop/merged.csv

'''
import pandas as pd
import os
import sys

# read the path of the folder containing the csv files
path1=sys.argv[1]
path2=sys.argv[2]
# output_path=sys.argv[3]
output_file =sys.argv[3]

df=pd.read_csv(path1)
df2=pd.read_csv(path2)
df=pd.concat([df,df2])
# save the output file
df.to_csv(output_file,index=False)

print("Done!")
