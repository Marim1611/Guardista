import os
import shutil
import sys
import random

origin = sys.argv[1]
cwe = sys.argv[2]

if not os.path.exists("train_files"):
   os.mkdir("train_files")

if not os.path.exists("train_files/"+cwe):
    os.mkdir("train_files/"+cwe)

train_target = "train_files/"+cwe

all_ll_files = os.listdir(origin)

numbers = list(range(len(all_ll_files)))
selected_numbers = random.sample(numbers, 1000)

i=0
for file_name in all_ll_files:
   if i in selected_numbers:
      shutil.copy(origin+"/"+file_name, train_target+"/"+file_name)
   i+=1
   
print("Files are copied successfully")