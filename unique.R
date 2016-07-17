
ptions(scipen = 999)

setwd("~/development/kaggle-talking-data/")

app.labels = read.csv("data/app_labels.csv")
nrow(app.labels)
app.labels = unique(app.labels)
nrow(app.labels)

t = table(paste(app.labels$app_id, app.labels$label_id))
t = data.frame(sort(t, decreasing = T))



app.labels.drop.dups = read.csv("data/app_labels_drop_dups.csv", sep = ";")
nrow(app.labels.drop.dups)

t.dd = table(paste(app.labels.drop.dups$app_id, app.labels.drop.dups$label_id))
t.dd = data.frame(sort(t.dd, decreasing = T))

#al = read.csv("data/app_labels.csv")
#al[al$app_id == -5210291384343299072 & al$label_id == 405,]
#app.labels.drop.dups[app.labels.drop.dups$app_id == -5210291384343299072 & app.labels.drop.dups$label_id == 405,]



