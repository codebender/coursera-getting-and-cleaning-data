# Download and unzip dataset
if(!file.exists('Dataset.zip')) {
  file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(file_url, destfile = "Dataset.zip", method = "curl")
}

data_set_path <- './UCI HAR Dataset'

if(!dir.exists(data_set_path)) {
  unzip("Dataset.zip")
}

require(data.table)



# 1. Merges the training and the test sets to create one data set.
trainData <- read.table(paste(data_set_path, 'train', 'X_train.txt', sep='/'))
trainSubject <- read.table(paste(data_set_path, 'train', 'subject_train.txt', sep='/'))
trainLabel <- read.table(paste(data_set_path, 'train', 'y_train.txt', sep='/'))

testData <- read.table(paste(data_set_path, 'test', 'X_test.txt', sep='/'))
testSubject <- read.table(paste(data_set_path, 'test', 'subject_test.txt', sep='/'))
testLabel <- read.table(paste(data_set_path, 'test', 'y_test.txt', sep='/'))

mergedData <- rbind(trainData, testData)
mergedSubject <- rbind(trainSubject, testSubject)
mergedLabel <- rbind(trainLabel, testLabel)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table(paste(data_set_path, "features.txt", sep='/'))
meanFeatures <- grep("mean\\(\\)", features[, 2])
standardDeviationFeatures <- grep("std\\(\\)", features[, 2])

