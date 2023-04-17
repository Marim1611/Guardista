import os
import pandas as pd
import json
import re

''' 
General Note: This script works for dataset that is resulted from a static analysis tool and has its binary files
General Note: PLEASE PLACE THE SCRIPT IN THE SAME DIRECTORY AS THE labeljsonfiles FOLDER AND THE CVEs.csv FILE

Run using: python cveNameToID.py

This script uses the json files from the labeljsonfiles folder and maps the cve names to the cve ids from the CVEs.csv file
The output is a csv file named mapped_cves.csv which is in the format: fileName, bugType, cve_ids

The cve_ids are separated by a pipe(|) if there are multiple cve ids for a single cve name

The cve_ids are mapped to the cve names in the following way:
1. The cve name is converted to lower case and the full stop at the end is removed
2. The cve name is matched with the cve names in the csv file
3. If the cve name is not found in the csv file, the last word of the cve name is matched with the cve names in the csv file
4. If the cve name is still not found in the csv file, the cve name is not mapped to any cve id

'''
#------------------------ Functions --------------------------------

# Get name of cves from csv file 
# Convert them to lower case and remove any full stops at the end.
def csv_entry_preprocessing(csv_entry):
    if type(csv_entry) == float:
        csv_entry = str(csv_entry)
    csv_entry = str(csv_entry).lower().strip('.') 
    return csv_entry

# Match cve name with the csv entries
# Create a regex that can take anything before the cve name and anything after it
def match_cve(cve, csv_entry): 
    cve_pattern= re.compile(".*"+cve+".*")
    matched_cves= re.search(cve_pattern, csv_entry)
    return matched_cves

# In case the cve name is not found in the csv file, match the last word of the cve name with the csv entries
# As with a little explore the to CVES.csv file, the last word of the cve name is usually found in some column of the csv file
def match_cve_with_last_word(cve, csv_entry):
    cve_pattern= re.compile(".*"+cve.split()[-1]+".*")
    matched_cves= re.search(cve_pattern, csv_entry)
    return matched_cves

# Read the csv file and match the cve name with the csv entries
# If the cve name is not found in the csv file, match the last word of the cve name with the csv entries
# Else, no match is found and the cve name is not mapped to any cve id
def read_csv(dataframe,cve):
    cve_ids=[]
    for index, row in dataframe.iterrows():
        mathced_cves = None
        for col in dataframe.columns:
            if col != 'CWE-ID':
                row[col] = csv_entry_preprocessing(row[col])
                matched_cves= match_cve(cve, row[col])
                
                if matched_cves != None:
                    cve_ids.append(row['CWE-ID'])
                    break
    if cve_ids == []:
        for index, row in dataframe.iterrows():
            mathced_cves = None
            for col in dataframe.columns:
                if col != 'CWE-ID':
                    row[col] = csv_entry_preprocessing(row[col])
                    matched_cves= match_cve_with_last_word(cve, row[col])
                    
                    if matched_cves != None:
                        cve_ids.append(row['CWE-ID'])
                        break
    return cve_ids

        

# Append the file name with its cve in a list to be converted into a csv
def append_cve(file,cve,cve_id):
    #check if the row already exists in the cve_list    
    for cves in cve_list:
        if cves['fileName'] == file and cves['bugType'] == cve and str(cve_id) not in cves['cve_ids']:
            cves['cve_ids'] = str(cves['cve_ids']) + '|' + str(cve_id)
            print("appended ",cve,"with cve id",cve_id,"in an existing row")
            return  
    print("appended",cve,"with cve id",cve_id,"in a new row")
    cve_list.append({'fileName': file, 'bugType': cve, 'cve_ids': str(cve_id)})

    

#--------------------------------- main code --------------------------------------------
dataframe = pd.read_csv("CVEs.csv",index_col=False)

cve_list = []

for currentpath,_ , files in os.walk(os.getcwd()+'\labeljsonfiles'):
    for file in files:
        # extract cves from json file
        f= open(os.path.join(currentpath,file))
        json_content= json.loads(f.read())

        CVEs=[]

        if len(json_content)==0:
            CVEs.append('safe')

        # extract cves from json file and append them to a list --> pick the value of the key 'bug_type' from the json file 
        # replace the underscore with a space and convert the string to lower case in the cve 
        # if the key 'safe' is present in the json file, append 'safe' to the list
        for cve in json_content: 
            if 'bug_type' in cve.keys():
                CVEs.append(cve['bug_type'].lower().replace('_',' ').strip())
            elif 'safe' in cve.keys():
                if cve['safe']==True:
                    CVEs.append('safe')
                    break
        

        if 'safe' not in CVEs: #check only for vulnerable files
            for cve in CVEs:
                cve_ids = read_csv(dataframe,cve) 
                if len(cve_ids)>0:
                    for cve_id in cve_ids:
                        append_cve(file,cve,cve_id)
                else:
                    print("No match found for "+cve+" in "+file)

        else:
            cve_list.append({'fileName': file, 'bugType': 'safe', 'cve_ids': 'safe'})           
        f.close()

mapped_cves = pd.DataFrame(cve_list)
mapped_cves.to_csv(os.getcwd()+"\mapped_cves.csv", index=False, header=True)
print("Number of unique labels is",mapped_cves['bugType'].nunique())