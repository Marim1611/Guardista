import numpy as np
from sklearn.metrics import classification_report

def evaluate(clf, X_val,y_val):
    y_pred =clf.predict(X_val)
    print(classification_report(y_val, y_pred))