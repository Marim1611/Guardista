import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os
from sklearn.model_selection import GridSearchCV, RandomizedSearchCV


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


def parameter_search(X, y, clf, param_grid , cv = 5):
        '''
        this function to search for the best parameters for the classifier
        X, y => data and labels
        clf => classifier
        param_grid => dict of parameters with their range to be searched {'C' : [0,100]}
        cv => number of folds in cross validation
        
        '''
        search = RandomizedSearchCV(clf, param_grid, cv=cv)
        search.fit(X,y)
        print("Best parameters: ", search.best_params_)
        print("Best cross-validation score: ", search.best_score_)
        return search.best_estimator_