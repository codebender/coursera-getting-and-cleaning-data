# Download and unzip dataset
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "Dataset.zip", method = "curl")
unzip("Dataset.zip")

