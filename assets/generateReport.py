import pandas as pd
import numpy as np
import json
import sys
import re
import os




'''
in case of classified:

{'waiting_status' : classified,
'report':
            [{ID : ..,
              name: ..,
              },
              
            {ID : ..,
             name:..,
             }]
}

in case of localized:

{'waiting_status' : localized,
'report':
            [{ID : ..,
              name: ..,
              location: {'filename' : (123,12343) , 'filename' : (123124,525234)}
              
              
              },
              
            {ID : ..,
             name:..,
             location: not localized
             }]
}

'''






'''
Related weaknesses
Alternate terms
Modes of intro
Detection methods hasa en de mohema lena ehna msh ll user
Taxonomy mappings
Related attack patterns
Bafakr nshel dool

-Potential mitigations mmkn nzabat feha l spaces 7asa feha kalam mofed
'''


forbidden_fields = ['Related Weaknesses', "Alternate Terms", "Modes Of Introduction", "Taxonomy Mappings", "Related Attack Patterns"]






outputPath = sys.argv[1]


def invertKeys(reportList):
    newList = []
    for rep in reportList:
        newDict = {}
        allFiles = list(rep['location'].keys())
        for file, spans in rep['location'].items():
            newDict[file] = rep
            newDict[file]['spans'] = spans
            try:
                del newDict[file]['location']
            except:
                pass
        newList.append(newDict)
    
    return newList




script_path = os.path.split(os.path.realpath(__file__))[0]




allCWEsDF = pd.read_csv(os.path.join(script_path, '1000.csv'))
allCWEs = allCWEsDF.to_dict()
with open ('classes.json', 'w') as f:
    json.dump(allCWEs, f, indent=6)



finalReport = {}
fields = list(allCWEsDF.columns)
 


#try:
if(1):

    classificationPath = os.path.join(outputPath,'classification1.txt')
    with open (classificationPath, 'r') as f:
        content = f.readlines()
    classes = [re.sub('\n', '', i) for i in content]


    vuln1_flag = True
    if(len(classes) == 0 or (len(classes) == 1 and classes[0] == 'safe')):
        with open (outputPath+'/finalReport1.json', 'w') as f:
            json.dump({'report': 'safe'}, f, indent=6)
            vuln1_flag = False
    #print(allCWEs)


    if(vuln1_flag):
        classificationReport_list = dict()


        for i, classif in enumerate(classes):
            classificationReport = dict()
            # print(classif)
            # print(allCWEsDF['CWE-ID'])
            # print(allCWEsDF.loc[allCWEsDF['CWE-ID']==int(classif), 'Name'])  
            for field in fields:
                if field in forbidden_fields:
                    continue
                entry = allCWEsDF.loc[allCWEsDF['CWE-ID']==int(classif), field]
                if(entry.empty):
                    entry = ''
                else:
                    entry = str(entry.item())
                    #print(entry)
                    entry = re.sub(':', '', entry)
                    entry = re.sub('SCOPE', ' ,', entry)
                    entry = re.sub('METHOD', ' ,', entry)
                    entry = re.sub('DESCRIPTION', ' ,', entry)
                    entry = re.sub('REFERENCE', ' ,', entry)
                    entry = re.sub('IMPACT', ' ,', entry)
                    entry = re.sub('PHASE', ' ,', entry)
                    entry = re.sub('STRATEGY', ' ,', entry)
                    entry = re.sub('TYPE', ' ,', entry)
                    entry = re.sub('NOTE', ' ,', entry)
                    #print(entry)
                classificationReport[field] = entry
                
            # print(classificationReport)    
            classificationReport['ID'] = classif
            classificationReport_list[f'rep{i}'] = classificationReport
            

        finalReport['report1'] = classificationReport_list




        with open (outputPath+'/finalReport1.json', 'w') as f:
            json.dump(finalReport, f, indent=6)





    vuln2_flag = True
    finalReport = {}
    classificationPath = os.path.join(outputPath,'classification2.txt')
    with open (classificationPath, 'r') as f:
        content = f.readlines()
    classes = [re.sub('\n', '', i) for i in content]

    if((not classes) or len(classes) == 0 or (len(classes) == 1 and classes[0] == 'safe')):
        with open (outputPath+'/finalReport2.json', 'w') as f:
            json.dump({'report': 'safe'}, f, indent=6)
        vuln2_flag = False
    #print(allCWEs)


    if (vuln2_flag):
        classificationReport_list = dict()


        for i, classif in enumerate(classes):
            classificationReport = dict()
            # print(classif)
            # print(allCWEsDF['CWE-ID'])
            # print(allCWEsDF.loc[allCWEsDF['CWE-ID']==int(classif), 'Name'])  
            for field in fields:
                if field in forbidden_fields:
                    continue
                entry = allCWEsDF.loc[allCWEsDF['CWE-ID']==int(classif), field]
                if(entry.empty):
                    entry = ''
                else:
                    entry = str(entry.item())
                    #print(entry)
                    entry = re.sub(':', '', entry)
                    entry = re.sub('SCOPE', ' ,', entry)
                    entry = re.sub('METHOD', ' ,', entry)
                    entry = re.sub('DESCRIPTION', ' ,', entry)
                    entry = re.sub('REFERENCE', ' ,', entry)
                    entry = re.sub('IMPACT', ' ,', entry)
                    entry = re.sub('PHASE', ' ,', entry)
                    entry = re.sub('STRATEGY', ' ,', entry)
                    entry = re.sub('TYPE', ' ,', entry)
                    entry = re.sub('NOTE', ' ,', entry)
                    #print(entry)
                classificationReport[field] = entry
                
            # print(classificationReport)    
            classificationReport['ID'] = classif
            classificationReport_list[f'rep{i}'] = classificationReport
            

        finalReport['report2'] = classificationReport_list




        with open (outputPath+'/finalReport2.json', 'w') as f:
            json.dump(finalReport, f, indent=6)


    ########################################################## LOCALIZATION REPORT ##############################################

    # try:
    #     if(os.path.isfile(str(outputPath+'/span.json'))):

    #         localizationPath = os.path.join(outputPath,'span.json')
    #         with open (localizationPath, 'r') as f:
    #             loc_content = json.load(f)
            
    #         classes_in_report = list(loc_content.keys())


    #         for classif in classes_in_report:
                
    #             for classification_rep in classificationReport_list:
    #                 if( classif == classification_rep['ID']):
    #                     classification_rep['location'] = loc_content[classif]

    #                 elif (not ('location' in classes_in_report.keys())):    
    #                     classification_rep['location']= 'not Localized'

                


    #     else:
    #         for classification_rep in classificationReport_list:    
    #                 classification_rep['location']= 'not Localized'



    #     finalReport['report'] = classificationReport_list
    #     with open (outputPath+'/finalReport.json', 'w') as f:
    #         json.dump(finalReport, f, indent=6)

    #     classificationReport_list = invertKeys(classificationReport_list)
    #     finalReport['report'] = classificationReport_list
    # except Exception as e:
    #             print(e)
    #             print('no localization')



    

# except Exception as e:
#    print(e)
#    print('no classification.txt')



# with open (outputPath+'/finalReport.json', 'w') as f:
#     json.dump(finalReport, f, indent=6)