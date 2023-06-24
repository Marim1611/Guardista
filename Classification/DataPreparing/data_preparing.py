import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os


def read_data(file_name):
    '''
    this function reads the data from the csv file and returns the features and labels 
    splitted into training and validation sets
    '''
    data = pd.read_csv(file_name)
    data.head()
    df_numpy = data.to_numpy()
    features = df_numpy[:, :-1]
    labels = df_numpy[:, -1]
    X_train, X_val, y_train, y_val = train_test_split(features, labels, test_size=0.2, random_state=0)
    return X_train, X_val, y_train, y_val

def drop(x,y,c,p):
        '''
        this function to drop of certain class in the data
        x,y => data and labels
        c => class to be dropped
        p => int number  (0.5 data => p=2)
        '''
        class_indices = np.where(y == c)[0]
        num_to_drop = len(class_indices) // p
        indices_to_drop = np.random.choice(class_indices, num_to_drop, replace=False)
        x_dropped = np.delete(x, indices_to_drop, axis=0)
        y_dropped = np.delete(y, indices_to_drop, axis=0)
        return x_dropped, y_dropped
