import pandas as pd

import numpy as np
import os


Vuln_DF = pd.read_csv('Vuln_Test_Results.csv', index_col=None)


TruePositive_DF = pd.DataFrame()

FalseNegative_DF = pd.DataFrame()



Vuln_DF['sumFP'] = Vuln_DF.iloc[:, :-1].sum(axis=1, numeric_only=True)
Vuln_DF['ratioFP'] = Vuln_DF['sumFP'] / (len(Vuln_DF.columns) - 3)

# apply comparison function to 'sum' column
Vuln_DF['FP'] = Vuln_DF['ratioFP'].apply(lambda x: 1 if x > 0.5 else 0)



TP_count = 0
for col in list(Vuln_DF.columns):
        
        if col == 'fileName':
                continue
        print('#########################################################################################')
        print(col)
        print (Vuln_DF[col])
        print (Vuln_DF['Label'])
        print('----------')
        
        print(Vuln_DF[Vuln_DF.Label.astype('string') == str(col)])
        print(Vuln_DF[(Vuln_DF.Label.astype('string') == str(col)) & (Vuln_DF[col] == 1)])
        print('#########################################################################################\n\n')
        TruePositive_DF = pd.concat([TruePositive_DF, Vuln_DF.loc[(Vuln_DF.Label.astype('string') == str(col)) & (Vuln_DF[col] == 1), :]], axis=0)




for index, row in Vuln_DF.iterrows():
        lab = str(row['Label'])
        if (lab in list(Vuln_DF.columns)):
            if(row[lab] == 0):
                #FalseNegative_DF = pd.concat([TruePositive_DF, Vuln_DF.loc[(Vuln_DF.Label.astype('string') == str(col)) & (Vuln_DF[col] != 1), :]], axis=0)
                FalseNegative_DF = pd.concat([FalseNegative_DF, row], axis=0)



        

        
    
    



# extract rows where label column matches a code column with value 1
#cols = list(Vuln_DF.columns)[1:-1]
#mask = (df['label'] == df[cols].apply(lambda x: cols[x.idxmax()], axis=1)) & (df[cols] == 1).any(axis=1)
#result = df[mask]

#print(result)





#TruePositive_DF = [Vuln_DF['Label'] == i and Vuln_DF[i] == '1' for i in Vuln_DF.columns]

#print(TruePositive_DF_list[5].head())

print(TruePositive_DF)

print('\n\n\n********************************************************************8')

print(Vuln_DF.sort_values('sumFP'))
Vuln_DF.to_csv('toChoose2.csv')







True_Positives = len(TruePositive_DF)

False_Positives = Vuln_DF.FP.sum(axis=0)


False_Negatives = len(FalseNegative_DF)


print('\n\n\n\n########################### CLASSIFICATION REPORT ##################################')
print(f'True Positives = {True_Positives}')
print(f'False Positives = {False_Positives}')
print(f'False Negatives = {False_Negatives}')
print('\n\n\n\n########################### #################### ##################################')
