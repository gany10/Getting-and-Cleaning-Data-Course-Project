## Download and unzip the dataset
url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="project3data.zip")
unzip("project3data.zip")

#1.Merge the training and test sets to create one data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

##merge training and test for feature data
feature <- rbind(x_train, x_test)
##merge tranining and test for activities data
activities <- rbind(y_train, y_test)
##merge tranining and test for subject data
subject <- rbind(subject_train, subject_test)

#2.Extract only the measurements on the mean and standard deviation for each measurement
##obtain feature names
featurenames <- read.table("./UCI HAR Dataset/features.txt")
featurenames[,2] <- as.character(featurenames[,2])

##identify only columns with mean/std features
mean_and_std <- grep("(mean|std)", featurenames[, 2])
mean_and_std_features <- feature[, mean_and_std]

##add featurenames to colomns 
names(mean_and_std_features) <- featurenames[mean_and_std, 2]


#3.Uses descriptive activity names to name the activities in the data set
##obtain activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

##name the activities 
activities[,1] <- activityLabels[activities[,1],2]
names(activities) <- "activity"

#4.Appropriately label the data set with descriptive variable names
##name subject data
names(subject) <- "subject"
##merge feature, activity and subject data into a singel data set
merge <- cbind (mean_and_std_features,activities, subject)

#5.creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
merge_melted <- melt(merge, id= c("subject", "activity"))
merge_mean <- dcast(merge_melted, subject + activity ~ variable, mean)

write.table(merge_mean, "./UCI HAR Dataset/tidy.txt", row.names = FALSE, quote = FALSE)