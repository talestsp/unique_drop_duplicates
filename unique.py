import pandas as pd
from os import chdir
import gc

working_dir = "/home/tales/development/kaggle-talking-data/"
chdir(working_dir)

dtypes = {'label_id': str, 'category': str, "app_id": str, "event_id": str, "app_id": str, "is_installed": str,  "is_active": str, "gender": str ,"age": int, "group": str}

app_labels = pd.read_csv("data/app_labels.csv", dtype=dtypes)
len(app_labels)
app_labels = app_labels.drop_duplicates()
len(app_labels)

app_labels.to_csv("data/app_labels_drop_dups.csv", sep = ";")
