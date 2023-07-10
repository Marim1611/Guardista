from imblearn.over_sampling import SMOTE,SMOTENC,SMOTEN,BorderlineSMOTE
from imblearn.under_sampling import NearMiss,RandomUnderSampler
import numpy as np
from IPython.display import display
import pandas as pd
from sklearn.model_selection import cross_val_predict
from mlpath import mlquest as mlq
import matplotlib.pyplot as plt
from sklearn.metrics import f1_score



def handle_class_imbalance(X,y, method=None,k=None, sampling_ratio=[1,1,1]):
    '''
    - this function handles the class imbalance problem in the dataset
    - takes the dataset as input X, y
    - takes required class imbalance handling method as input =>'SMOTE','SMOTENC',
      'SMOTEN',"BorderlineSMOTE","Under Sampling","Cost Sensitive"
    - k nearest neighbors used to define the neighborhood of samples in case of oversampling
    - sampling_ratio list contains ratios of samples in each class over majority class after resampling
      if  ratio is 1 then the number of samples in that class will be the same as majority class
    - returns balanced data set bal_X, bal_y or return weights of classes in case of cost sensitive 
    '''
    over_sampling_methods = ['SMOTE','SMOTENC','SMOTEN',"BorderlineSMOTE"]
    if method in over_sampling_methods:
        bal_X, bal_y = over_sampling(X,y,k, sampling_ratio,method)
        return bal_X,bal_y
    
    elif method == 'Under Sampling':
        bal_X, bal_y = under_sampling(X,y)
        return bal_X,bal_y
        
    elif method == 'Cost Sensitive':
        weights = cost_sensitive(y)
        return weights
    else:
        return X,y
    
#--------------------------------- Resampling Functions ----------------------------------------------

def over_sampling( X,y,k,sampling_ratio,method ):

    #----- handling the sampling strategy for each class
    sampling_strategy= dict() 
    Nmj = np.max(np.bincount(y)) # number of samples in the majority class

    #------- check if ratio is reasnoble
    for i in range(len(sampling_ratio)):
        sampling_strategy[i]= int(Nmj * sampling_ratio[i])
        if sampling_strategy[i] < np.bincount(y)[i]:
            print("incorrect ratio for class ",i)
            print("after over sampling he number of samples in a class should be >= to the original number of samples")
            return X,y
    sampling_strategy[3]=Nmj #unchanged
    #------------------------
    if method == "SMOTE":
        sm = SMOTE(k_neighbors=k , sampling_strategy=sampling_strategy)

    elif method == "BorderlineSMOTE":
        sm = BorderlineSMOTE(k_neighbors=k, sampling_strategy=sampling_strategy)
    else:
        return X,y

    X_sm, y_sm = sm.fit_resample(X, y)
    return X_sm, y_sm

#------------------------------------------------------------
def under_sampling(X,y):
    '''
    this function apply undersampling technique 
    input atgs: X => features
                y=> corrsponding labels
    return      X_res=> data points after undersampling
                y_res=> corrsponding labels after undersampling

    '''
    rus = RandomUnderSampler(random_state=42)
    X_res, y_res = rus.fit_resample(X, y)
    return X_res, y_res

#------------------------------------------------------------
   
def cost_sensitive(y):
    '''
    this function compute weights for each class (CVE)
    to handle class-imbalance problem
    input args: y => classes
    return : list of weights for each class
    '''
    weights=dict()
    for i in range(len(np.unique(y))): 
        weights[i]=1 /len(y[y == i])
    return weights


   


    


        
        


 