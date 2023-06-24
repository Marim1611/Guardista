import numpy as np
from sklearn.metrics import classification_report
from sklearn.metrics import accuracy_score
def evaluate(clf, X_val,y_val, y_train_predict, y_train):
    y_pred =clf.predict(X_val)
    print(f"Training Accurracy: {accuracy_score(y_train, y_train_predict) * 100}%")
    print(classification_report(y_val, y_pred))