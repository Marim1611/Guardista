import sys
import pandas as pd


'''
    This script integrates the labels of the Juliet dataset with the 3in1 dataset.
    it takes two arguments:
        1. the path to the Juliet dataset labels (the one containing the labels.csv file)
        2. the path to the 3in1 dataset labels (the one containing the mapped_cves.csv file)

    eg. python allLabels.py "D:\GP Materials\Guardista\Dataset" "D:\GP Materials\Guardista\Dataset\DataSet"

    it outputs a csv file named "allLabels.csv" in the same path as labels.csv .

'''

pathToJulietLabels=str(sys.argv[1])
pathTo3In1Dataset=str(sys.argv[2])

juliet= pd.read_csv(pathToJulietLabels+'/labels.csv')
_3in1= pd.read_csv(pathTo3In1Dataset+'/mapped_cves.csv')
labels=[]

# ------------ Appending labels in a list ------------

def append_CVEs(cve_id,vuln, ):
    for index in range(len(labels)):
        if labels[index]['CVE-ID'] == cve_id:
            labels[index]['Count'] += 1
            if vuln not in labels[index]['Vulnerability']:
                labels[index]['Vulnerability'] = labels[index]['Vulnerability'] + '|' + str(vuln)
            return

    labels.append({'CVE-ID': cve_id, 'Vulnerability': str(vuln),'Count': 1}) 


# ------------ loop through the 3in1 dataset ------------
for index, row in _3in1.iterrows():
    vuln = row['bugType']
    cve_ids = row['cve_ids']
    
    if cve_ids.count('|') > 0:
        cve_id = cve_ids.split('|')
        for _id in cve_id:
            append_CVEs(_id,vuln)
    else:
        append_CVEs(cve_ids,vuln)

# ------------ loop through the Juliet dataset ------------
for index, row in juliet.iterrows():
    start= row['CVE-ID'].index('-')
    end= row['CVE-ID'].index(':')
    cve_id = row['CVE-ID'][start+1:end].strip()
    vuln= row['CVE-ID'][end+1:].strip()    
    append_CVEs(cve_id,vuln)
    
    
# ------------ Write output to allLabels.csv ------------
labels_csv= pd.DataFrame(labels)
labels_csv.to_csv(pathToJulietLabels+'/allLabels.csv',index=False)

# ------------ Print #unique labels ------------
unique_labels= labels_csv['CVE-ID'].unique()
print(f'#unique labels: {len(unique_labels)}')

#------------ add proportion of count in labels.csv ------------
labels_csv['Proportion']= labels_csv['Count']/sum(labels_csv['Count'])
labels_csv.to_csv(pathToJulietLabels+'/allLabels.csv',index=False)