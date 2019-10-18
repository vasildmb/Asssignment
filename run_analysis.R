
#Required Libraries
library(dplyr)
library(tidyr)

##Loading the files from Test folder

Sub_test <- read.table('subject_test.txt', header = F)
X_test <- read.table('X_test.txt', header = F)
Y_test <- read.table('y_test.txt', header = F)
colnames(Y_test) <- 'labels'
colnames(Sub_test) <- 'Subject_ID'
cNames <- read.table('../features.txt')
cNames <- as.vector(cNames$V2)
colnames(X_test) <- cNames
Test_bind <- cbind(X_test, Sub_test, Y_test)



##Loading the files from Test folder

Sub_train <- read.table('../train/subject_train.txt', header = F)
X_train <- read.table('../train/X_train.txt', header = F)
Y_train <- read.table('../train/y_train.txt', header = F)

colnames(Y_train) <- 'labels'
colnames(Sub_train) <- 'Subject_ID'
cNames <- read.table('../features.txt')
cNames <- as.vector(cNames$V2)
colnames(X_train) <- cNames
Train_bind <- cbind(X_train, Sub_train, Y_train)


#Merging the dataframe
both <-  rbind(Test_bind, Train_bind)

Mn <- grep('mean()', cNames, value = T, fixed = T) #Use grep to create a list that contains only the names of columns with "mean()"
Std <- grep('std()', cNames, value = T, fixed = T)#Use grep to create a list that contains only the names of columns with "std()"
mn_both <- both[, colnames(both) %in% Mn]         #Use the previously generated list to select columns
std_both <- both[, colnames(both) %in% Std]       #Use the previously generated list to select columns
Mean_Std <- cbind(mn_both, std_both)              # Combine in a df

tidy_dataset <- as.data.frame(colMeans(Mean_Std, na.rm = T)) #All the mean of each variable
colnames(tidy_dataset) <- 'Tidy values'                     # Rename the column
