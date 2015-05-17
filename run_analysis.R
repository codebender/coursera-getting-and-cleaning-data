# Download and unzip dataset
if(!file.exists('Dataset.zip')) {
  file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(file_url, destfile = "Dataset.zip", method = "curl")
}

dataSetPath <- './UCI HAR Dataset'

if(!dir.exists(dataSetPath)) {
  unzip("Dataset.zip")
}


require(data.table)
require(rapportools)


# 1. Merges the training and the test sets to create one data set.
trainData <- read.table(paste(dataSetPath, 'train', 'X_train.txt', sep='/'))
trainSubject <- read.table(paste(dataSetPath, 'train', 'subject_train.txt', sep='/'))
trainLabel <- read.table(paste(dataSetPath, 'train', 'y_train.txt', sep='/'))

testData <- read.table(paste(dataSetPath, 'test', 'X_test.txt', sep='/'))
testSubject <- read.table(paste(dataSetPath, 'test', 'subject_test.txt', sep='/'))
testLabel <- read.table(paste(dataSetPath, 'test', 'y_test.txt', sep='/'))

mergedData <- rbind(trainData, testData)
mergedSubject <- rbind(trainSubject, testSubject)
mergedLabel <- rbind(trainLabel, testLabel)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table(paste(dataSetPath, "features.txt", sep='/'))
meanAndStdFeatures <- grep("mean|std", features[, 2])
mergedData <- mergedData[, meanAndStdFeatures]
names(mergedData) <- gsub("BodyBody", "Body", gsub("^t", "time", gsub("^f", "freq", tocamel(as.character(features[meanAndStdFeatures, 2])))))


# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table(paste(dataSetPath, "activity_labels.txt", sep='/'))
activities[, 2] <- tocamel(tolower(activities[, 2]))
mergedLabel <- merge(mergedLabel, activities, by=c(1), sort = F)
mergedLabel <- data.frame(activity=mergedLabel[, 2])


# 4. Appropriately labels the data set with descriptive variable names.
names(mergedSubject) <- 'subject'
tidyDataSet <- cbind(mergedSubject, mergedLabel, mergedData)


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
subjectActivityMeans <- aggregate(. ~ activity + subject,data = tidyDataSet,FUN=mean)
write.table(tidyDataSet, "subject_activity_means.txt", row.name=FALSE)
