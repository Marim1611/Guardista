import numpy as np
from sklearn.metrics import classification_report
from sklearn.metrics import accuracy_score
from sklearn.model_selection import cross_val_score, StratifiedKFold
import matplotlib.pyplot as plt

'''
    This file contains functions used to evaluate and test models
    with different methods

'''
def evaluate(clf, X_val,y_val, y_train_predict, y_train):
    '''
    this function evalute ML model through printing training accuracy and classification 
    report of validation set
    input args: model, validation features, validation labels, training features, training labels
    '''
    y_pred =clf.predict(X_val)
    print(f"Training Accurracy: {accuracy_score(y_train, y_train_predict) * 100}%")
    print(classification_report(y_val, y_pred))

def confidence_level(X,y, n_splits=5, scoring ='scoring',clf):
    '''
    this function compute the confidence level of ML models
    using stratified k fold
    '''
    # Define the cross-validation strategy
    cv = StratifiedKFold(n_splits=n_splits)
    # Use cross-validation to estimate the accuracy and confidence level
    scores = cross_val_score(clf, X, y, cv=cv, scoring=scoring)
    mean_score = np.mean(scores)
    var_score = np.var(scores)
    conf_level = 1.0 - var_score

    # Print the accuracy and confidence level
    print("Accuracy: %.2f" % mean_score)
    print("Confidence level: %.2f" % conf_level)
    return conf_level


def test_all_binary(X_all,y_all, model,CWE='', sample_num=100):
    '''
     this function test binary classifier trained on specefic CVE
     on 100 random samples from all CVEs
     input args: 
     X_all => list of numpy arrays, each numpy array represents set of
              X_test contains features of specefic CVE 
     y_all => corresponding true labels of X_all
     model => loaded model of the binary classifer to be tested
     CWE   => ID of CWE to be tested
     sample_num => size of random sample default =100
     
    '''

    fig, axs = plt.subplots(3, 6, figsize=(20, 10))
    for i,X in enumerate(X_all):
        random_indices = np.random.choice(X.shape[0], size=sample_num, replace=False)
        random_points = X[random_indices]
        y_pred=model.predict(random_points)
        correctly_classified =[]
        for pred in y_pred:

            if pred == 'safe' :
                correctly_classified.append(1)
            else:
                correctly_classified.append(0)
        # Create a bar plot in the appropriate subplot
        row = i // 6
        col = i % 6
        if list(set(y_all[i]))[0] == CWE:
            colors=['green', 'red']
        else:
            colors=['red', 'green']

        axs[row, col].bar(['Incorrect', 'Correct'], [correctly_classified.count(0), correctly_classified.count(1)], color=colors)
        #
        title= list(set(y_all[i]))[0] +' samples'
        fig.suptitle('Binary Classification of '+CWE+' Results')
        axs[row, col].set_title(title)








