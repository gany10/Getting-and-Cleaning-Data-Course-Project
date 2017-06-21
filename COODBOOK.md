#
The script "run_analysis.R" download original dataset Human Activity Recognition Using Smartphones Dataset (Version 1.0), and conduct the following processes to generate tidy data:

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement.

3.Uses descriptive activity names to name the activities in the data set.

4.Appropriately labels the data set with descriptive variable names.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

====================================

The "tidy.txt" file include 81 variables:

#subject:the identifier of the subject who carried out the experiment.Its range is from 1 to 30. 

#activity: 

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

#79 Measurement variables:

tBodyAccMeanX

tBodyAccMeanY

tBodyAccMeanZ

tBodyAccStdX

tBodyAccStdY

tBodyAccStdZ

tGravityAccMeanX

tGravityAccMeanY

tGravityAccMeanZ

tGravityAccStdX

tGravityAccStdY

tGravityAccStdZ

tBodyAccJerkMeanX

tBodyAccJerkMeanY

tBodyAccJerkMeanZ

tBodyAccJerkStdX

tBodyAccJerkStdY

tBodyAccJerkStdZ

tBodyGyroMeanX

tBodyGyroMeanY

tBodyGyroMeanZ

tBodyGyroStdX

tBodyGyroStdY

tBodyGyroStdZ

tBodyGyroJerkMeanX

tBodyGyroJerkMeanY

tBodyGyroJerkMeanZ

tBodyGyroJerkStdX

tBodyGyroJerkStdY

tBodyGyroJerkStdZ

tBodyAccMagMean

tBodyAccMagStd

tGravityAccMagMean

tGravityAccMagStd

tBodyAccJerkMagMean

tBodyAccJerkMagStd

tBodyGyroMagMean

tBodyGyroMagStd

tBodyGyroJerkMagMean

tBodyGyroJerkMagStd

fBodyAccMeanX

fBodyAccMeanY

fBodyAccMeanZ

fBodyAccStdX

fBodyAccStdY

fBodyAccStdZ

fBodyAccMeanFreqX

fBodyAccMeanFreqY

fBodyAccMeanFreqZ

fBodyAccJerkMeanX

fBodyAccJerkMeanY

fBodyAccJerkMeanZ

fBodyAccJerkStdX

fBodyAccJerkStdY

fBodyAccJerkStdZ

fBodyAccJerkMeanFreqX

fBodyAccJerkMeanFreqY

fBodyAccJerkMeanFreqZ

fBodyGyroMeanX

fBodyGyroMeanY

fBodyGyroMeanZ

fBodyGyroStdX

fBodyGyroStdY

fBodyGyroStdZ

fBodyGyroMeanFreqX

fBodyGyroMeanFreqY

fBodyGyroMeanFreqZ

fBodyAccMagMean

fBodyAccMagStd

fBodyAccMagMeanFreq

fBodyBodyAccJerkMagMean

fBodyBodyAccJerkMagStd

fBodyBodyAccJerkMagMeanFreq

fBodyBodyGyroMagMean

fBodyBodyGyroMagStd

fBodyBodyGyroMagMeanFreq

fBodyBodyGyroJerkMagMean

fBodyBodyGyroJerkMagStd

fBodyBodyGyroJerkMagMeanFreq

