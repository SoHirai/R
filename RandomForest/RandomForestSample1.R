#########################################
### Using Random Forest
#########################################


require("randomForest")

# set working directory
setwd("/Users/so/work/R/RandomForest")

# the data file is conversion sample data
fileName = "./data/conversionSampleData.csv"
d <- read.csv(fileName)

# summary of data set
summary(d)

# tuning the number of features when making the decision tree 
tuneRF(d[,-8],d[,8],doBest=T)

# making the random forest model
# "mtry" parameter is decided by "tuneRF"
d.rf <- randomForest(cv~.,d,mtry=2)
print(d.rf) # the result of random forest

# importance of the explanatory variable
importance(d.rf)

# prediction result table
table(d$cv,predict(d.rf,d[,-8]))





