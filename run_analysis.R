library(dplyr)

# load train dataset
xTrain <- read.table("train\\X_train.txt")
yTrain <- read.table("train\\y_train.txt")
subjectTrain <- read.table("train\\subject_train.txt")
train <- cbind(xTrain, yTrain, subjectTrain)

# load test dataset
xTest <- read.table("test\\X_test.txt")
yTest <- read.table("test\\y_test.txt")
subjectTest <- read.table("test\\subject_test.txt")
test <- cbind(xTest, yTest, subjectTest)

# merge train and test datasets
dataset <- rbind(train, test)

# assign variable names
features <- read.table("features.txt")
colnames(dataset) <- c(as.character(features$V2), "activity", "subject")

# keep only the measurements on the mean and standard deviation. also keep activity and subject
filteredFeatures <- grep("-(mean|std)\\(\\)-|activity|subject", colnames(dataset), value = TRUE)
filteredDataset <- dataset[, filteredFeatures]

# use descriptive activity names to name the activities in the data set
activityLabels <- read.table("activity_labels.txt")
tidy <- inner_join(filteredDataset, activityLabels, by = c("activity" = "V1")) %>% 
  # set appropriate column name
  mutate(activity = V2) %>% 
  # remove unnecessary column from joined table
  select(-V2) %>%
  
  # create data set with the average of each variable for each activity and each subject
  group_by(activity, subject) %>%
  summarize_each(funs(mean))

# label the data set with descriptive variable names
tidyColNames <- colnames(tidy)
tidyColNames <- sub("Acc", "Accelerometer", tidyColNames)
tidyColNames <- sub("Gyro", "Gyroscope", tidyColNames)
tidyColNames <- sub("^t", "time", tidyColNames)
tidyColNames <- sub("^f", "frequency", tidyColNames)
tidyColNames <- sub("-mean\\(\\)-", "-meanValue-", tidyColNames)
tidyColNames <- sub("-std\\(\\)-", "-standardDeviation-", tidyColNames)
colnames(tidy) <- tidyColNames

write.table(tidy, "tidy.txt", row.names = FALSE)
