# Set working directory
  setwd("~/Course 3 Project")

 
# Download and unzip the dataset:
  
  filename <- "datafiles.zip"
  
  if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename)
  }
  
  if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
  }
  
#Load activity labels and features
  
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  features <- read.table("./UCI HAR Dataset/features.txt")
  features_wanted <- features[grep("mean|std", features[,2]), ]
  

#Load train data, and select the needed features
  train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  train_wanted <- train[, as.numeric(features_wanted[,1])]
  train_activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
  train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  train <- cbind(train_subject, train_activity, train_wanted)
  
#Load test data, and select the needed features
  test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  test_wanted <- test[, as.numeric(features_wanted[,1])]
  test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
  test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  test <- cbind(test_subject, test_activity, test_wanted)
  
#merge the two datasets (test and train)
  combineddata <- rbind(train, test)
  
#Rename merged data with descriptive variable names
  features_wanted[,2]<- gsub("-","", features_wanted[,2])
  features_wanted[,2]<- gsub("[()]","", features_wanted[,2]) 
  colnames(combineddata) <- c("subject", "activity", features_wanted[,2]) 
  
#Use descriptive activity names of the activities in the data set
  combineddata$activity <- factor(combineddata$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])
  
#creates a tidy data set with the average of each measurement.
  tidy_data <-aggregate(combineddata[, 3:ncol(combineddata)], by=list(combineddata$subject,combineddata$activity), FUN=mean, na.rm=TRUE)
  colnames(tidy_data) [1:2]<- c("subject", "activity") 
  write.table(tidy_data, file="tidy_data.txt", row.names = FALSE)