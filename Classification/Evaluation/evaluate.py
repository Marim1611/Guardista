import numpy as np
from sklearn.metrics import classification_report
from sklearn.metrics import accuracy_score
from sklearn.model_selection import cross_val_score, StratifiedKFold
import matplotlib.pyplot as plt

def evaluate(clf, X_val,y_val, y_train_predict, y_train):
    y_pred =clf.predict(X_val)
    print(f"Training Accurracy: {accuracy_score(y_train, y_train_predict) * 100}%")
    print(classification_report(y_val, y_pred))

def confidence_level(X,y, n_splits=5, scoring ='scoring'):

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

def test_binary(X,model,y,title=''):
    random_indices = np.random.choice(X.shape[0], size=100, replace=False)
    random_points = X[random_indices]
    y_pred=model.predict(random_points)
    print('unique predicted',set(y_pred))
    print('class you test should be one value',set(y))
    correctly_classified =[]
    print('model classes' ,model.classes_)
    for pred in y_pred:

        if pred == 'safe' :
            correctly_classified.append(1)
        else:
            correctly_classified.append(0)

    plt.bar(['Misclassified', 'Correctly classified'], [correctly_classified.count(0), correctly_classified.count(1)], color=['red', 'green'])
    plt.title(title)
    plt.legend()
    plt.show()

def test_all_binary(X_all, y_all, model, CWE='', sample_num=100):
    # Create a grid of subplots with 5 rows and 3 columns
    fig, axs = plt.subplots(5, 3, figsize=(20, 10))
    # Loop over each class
    for i, X in enumerate(X_all):
        random_indices = np.random.choice(X.shape[0], size=sample_num, replace=False)
        random_points = X[random_indices]
        y_pred = model.predict(random_points)
        correctly_classified = []
        for pred in y_pred:
            if pred == 'safe':
                correctly_classified.append(1)
            else:
                correctly_classified.append(0)
        
        # Create a bar plot in the appropriate subplot
        row = i // 3
        col = i % 3
        if list(set(y_all[i]))[0] == CWE:
            colors = ['green', 'red']
        else:
            colors = ['red', 'green']
        axs[row, col].bar(['Incorrect', 'Correct'], [correctly_classified.count(0), correctly_classified.count(1)], color=colors)
        title = list(set(y_all[i]))[0] + ' samples'
        fig.suptitle('Binary Classification of ' + CWE + ' Results')
        axs[row, col].set_title(title)









