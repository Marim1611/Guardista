import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import os
from sklearn.model_selection import GridSearchCV, RandomizedSearchCV
import pickle
import matplotlib.pyplot as plt



def read_data(file_name,header=None, index_col=None, endcode_labels=False, drop_1st_col=False):
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
        return y_encoded

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
#write function to 
# def validation_curves(clf,x_data,y_data,cv, hyperparameters):
#     '''
#     Plot the validation curve for a given model and hyperparameter.
#     '''

#     categorical = False

#     plt.rcParams['figure.dpi'] = 300
# #     plt.style.use('dark_background') 

#     nrows = int(np.ceil(len(hyperparameters)/2))
#     ncols= 2 if len(hyperparameters) > 1 else 1

#     fig, axs = plt.subplots(nrows, ncols, figsize=(20, 10))
#     fig.subplots_adjust(top=1.0)

#     if len(hyperparameters) % 2 == 1 and len(hyperparameters) > 1:
#         fig.delaxes(axs[-1, -1])

#     if len(hyperparameters) == 1:
#         fig.set_size_inches(10,5)

#     for index, param_name in enumerate(hyperparameters.keys()):
#         param_range = hyperparameters[param_name]

#         if isinstance(param_range[0], str):
#             categorical = True

#         train_scores, test_scores = validation_curve(clf, x_data, y_data, param_name=param_name, param_range=param_range,
#                                     cv=StratifiedKFold(cv), scoring="f1_weighted", n_jobs=4)
        
#         train_scores= 1-np.mean(train_scores, axis=1)
#         test_scores= 1-np.mean(test_scores, axis=1)

#         if len(hyperparameters) == 1:
#             ax= axs
#         elif len(hyperparameters) == 2:
#             ax = axs[index]
#         else:
#             ax = axs[index // 2, index % 2]

#         if categorical:
#             # check for nan values and remove them
#             nan_indices= np.argwhere(np.isnan(train_scores)) 

#             if len(nan_indices) > 0:
#                 nan_values= [param_range[i] for i in nan_indices.flatten()]
                
#                 warnings.warn(f"Validation curve for {param_name} contains NaN values for values {nan_values}. These values will be removed.")

#                 train_scores= np.delete(train_scores, nan_indices)
#                 test_scores= np.delete(test_scores, nan_indices)
#                 param_range= np.delete(param_range, nan_indices)

#             x_axis= np.arange(len(param_range))            
#             ax.bar(x_axis-0.2/2, train_scores,width=0.2, label="Training Error")
#             ax.bar(x_axis+0.2/2, test_scores,width=0.2, label="Validation Error")
#             ax.set_xticks(x_axis)
#             ax.set_xticklabels(param_range)

#         else:

#             ax.plot(param_range, train_scores, label="Training Error")
#             ax.plot(param_range, test_scores, label="Validation Error")
            
#             optimal_param= optimal_hyperparameter(train_scores, test_scores, param_range)
#             ax.axvline(optimal_param, color='red', linestyle='--', label="Optimal "+param_name+\
#                        " is around "+str(np.round(optimal_param,2)))

#         ax.set_title(f"Validation Curve for {param_name}")
#         ax.set_xlabel(param_name)
#         ax.set_ylabel("Error")
#         ax.legend(loc="best")  

#     clear_output(wait=False) 
#     plt.show()
