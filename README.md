# Getting-and-Cleaning-Data-Course-Project
=======================================
This project generate tidy data from the original dataset: Human Activity Recognition Using Smartphones Dataset (Version 1.0).

The orginal dataset is obtained from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full description about the original dataset can be obtained from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

=======================================
The Github repo contains the following files:

--"README.md":explains the analysis files

--"COODBOOK.md": modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

--"run_analysis.R": the R script that can be run in RStudio to generate the final tidy data file.The R script "run_analysis.R" does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

--"tidy.txt":the final generated tidy data.
