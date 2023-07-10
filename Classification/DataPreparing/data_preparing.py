import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os
from sklearn.model_selection import GridSearchCV, RandomizedSearchCV
import pickle
import matplotlib.pyplot as plt



def read_data(file_name,header=None, index_col=None, endcode_labels=False, drop_1st_col=False, split = True):
    '''
    this function reads the data from the csv file and returns the features and labels 
    splitted into training and validation sets
    '''
    data = pd.read_csv(file_name , header=header, index_col=index_col )
    if drop_1st_col:
        data = data.drop(data.columns[0], axis=1)
    df_numpy = data.to_numpy()
    features = df_numpy[:, :-1]
    labels = df_numpy[:, -1]
    if endcode_labels:
        labels = encode_labels(labels)
    if split:
        X_train, X_val, y_train, y_val = train_test_split(features, labels, test_size=0.2, random_state=0)
        return X_train, X_val, y_train, y_val
    else:
        return features,labels

def drop(x,y,c,p):
        '''
        this function to drop of certain class in the data
        x,y => data and labels
        c => class to be dropped
        p => int number  (0.5 data => p=2)
        '''
        class_indices = np.where(y == c)[0]
        num_to_drop = int(len(class_indices) * p)
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

def show_proportions(y):
    '''
    this function to show the proportions of each class in the data
    y => labels
    '''
    unique, counts = np.unique(y, return_counts=True)
    print(dict(zip(unique, counts)))

def save_model(model, model_name):
        '''
        this function to save the model
        model => the classifier
        model_name => the name of the model
        '''
        if not os.path.exists('models'):
                os.makedirs('models')
        with open('models/'+model_name+'.pkl', 'wb') as f:
                pickle.dump(model, f)

def encode_labels(y):
        '''
        this function to encode the labels to numbers
        y => labels
        '''
        unique_labels = np.unique(y)
        labels_dict = dict(zip(unique_labels, range(len(unique_labels))))
        y_encoded = np.array([labels_dict[label] for label in y])
        return y_encoded,labels_dict

def show_probs(probs, clf, case):
        '''
        this function plot probablities of the classification for all samples

        '''
        class_labels= clf.classes_
        fig, ax = plt.subplots()
        ax.bar(range(len(probs)), probs[:, 0], label=class_labels[0])
        for i in range(1, len(class_labels)):
            ax.bar(range(len(probs)), probs[:, i], bottom=np.sum(probs[:, :i], axis=1), label=class_labels[i])
        ax.set_xlabel('Test sample')
        ax.set_ylabel('Probability')
        ax.set_title('Probabilities for each class for '+case+' samples')
        ax.legend()
        plt.show()

def get_class_probs(path,clf):
        '''
        this function to get the probabilities of the classification for all samples
        path => path of the folder containing the csv files of the data samples (features)
        clf => classifier
        returns => list of length = no of samples
        each list contains the probabilities of the n classes for the corresponding file
        '''
        files = os.listdir(path)
        files_csv = [f for f in files if f[-3:] == 'csv']
        all_probabilities = [] # list of length 4 => each lists contains the probabilities of the 4 classes for the corresponding file 
        print(files_csv)
        for file in files_csv:
                data = pd.read_csv(path+file , header=None, index_col=None )
                data = data.drop(data.columns[0], axis=1)
                data_numpy=data.to_numpy()
                x_safe_test = data_numpy[:, :-1]
                y_safe_test = data_numpy[:, -1]
                probabilities = clf.predict_proba(x_safe_test)
                all_probabilities.append(probabilities)
        return all_probabilities,x_safe_test,y_safe_test

def load_model(model_name):
        '''
        this function to load the model
        '''
        with open('models/'+ model_name, 'rb') as f:
                model = pickle.load(f)
        return model

def get_data(dir_path):
    '''
    this function gather data from folder of csv files to store features
    and labels of each cav
    input args: 
        dir_path => relative path to folder contain csv files
    return:
        X_all => list of numpy arrays, each numpy array represents set of
              X_test contains features of specefic CVE 
        y_all => corresponding true labels of X_all 
    '''
    X_all=[]
    y_all=[]
    for filename in os.listdir(dir_path):
        if filename.endswith('.csv'):
            file_path = os.path.join(dir_path, filename)
        X,y =read_data(file_path, drop_1st_col=False, split=False)
        X_all.append(X)
        y_all.append(y)
    return X_all,y_all
