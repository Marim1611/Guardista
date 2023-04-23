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

