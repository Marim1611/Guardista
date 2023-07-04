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




allCWEs = pd.read_csv(os.path.join(script_path, '1000.csv')).to_dict()
with open ('classes.json', 'w') as f:
    json.dump(allCWEs, f, indent=6)



finalReport = {}
all_keys = list(allCWEs.keys())
print(all_keys)

try:

    classificationPath = os.path.join(outputPath,'classification.txt')
    with open (classificationPath, 'r') as f:
        content = f.readlines()
    classes = [re.sub('\n', '', i) for i in content]
    #print(allCWEs)


    classificationReport_list = []


    for classif in classes:
        classificationReport = dict()
        for i in range(len(all_keys)):
            classificationReport[all_keys[i]] = allCWEs[all_keys[i]][int(classes[0])]
            #print(allCWEs[all_keys[i]][int(classes[0])])
        classificationReport_list.append(classificationReport)
        classificationReport['ID'] = classif

    finalReport['report'] = classificationReport_list




    with open (outputPath+'/finalReport.json', 'w') as f:
        json.dump(finalReport, f, indent=6)


    ########################################################## LOCALIZATION REPORT ##############################################

    try:
        if(os.path.isfile(str(outputPath+'/span.json'))):

            localizationPath = os.path.join(outputPath,'span.json')
            with open (localizationPath, 'r') as f:
                loc_content = json.load(f)
            
            classes_in_report = list(loc_content.keys())


            for classif in classes_in_report:
                
                for classification_rep in classificationReport_list:
                    if( classif == classification_rep['ID']):
                        classification_rep['location'] = loc_content[classif]

                    elif (not ('location' in classes_in_report.keys())):    
                        classification_rep['location']= 'not Localized'

                


        else:
            for classification_rep in classificationReport_list:    
                    classification_rep['location']= 'not Localized'



        finalReport['report'] = classificationReport_list
        with open (outputPath+'/finalReport.json', 'w') as f:
            json.dump(finalReport, f, indent=6)

        classificationReport_list = invertKeys(classificationReport_list)
        finalReport['report'] = classificationReport_list
    except Exception as e:
                print(e)
                print('no localization')



    

except Exception as e:
    print(e)
    print('no classification.txt')



with open (outputPath+'/finalReport.json', 'w') as f:
    json.dump(finalReport, f, indent=6)