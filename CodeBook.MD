==================================================================
R Programming Getting and Cleaning Data Course Project
tidy_data Data Dictionary
Author: FGP
Version 1.0
==================================================================

The tidy_data contains the average of the various measurements (described below) for activities
that were performed by 30 volunteers.  The data is grouped by activities and volunteers.  The
measurements were derived from a larger data set, wherein only measurements pertaining to
mean and standard deviation were included.  The column names of the tidy_data file were
derived from the original files but were transformed such that they names and values are descriptive
of their purposes.  For the activity column, the values were derived from the followingg mapping:
1 - WALKING
2 - WALKING_UPSTAIRS
3 - WALKING_DOWNSTAIRS
4 - SITTING
5 - STANDING
6 - LAYING

The names of the measurements were also cleaned up by stripping the special characters "-" and "()".

activity - activities performed by volunteers (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
subject - volunteers for the human activity experiment (1 to 30) 
tBodyAccmeanX - average of time measurement of the mean of Body Acceleration signals for direction X 
tBodyAccmeanY - average of time measurement of the mean of Body Acceleration signals for direction Y 
tBodyAccmeanZ - average of time measurement of the mean of Body Acceleration signals for direction Z
tBodyAccstdX  - average of time measurement of the standard deviation of Body Acceleration signals for direction X 
tBodyAccstdY  - average of time measurement of the standard deviation of Body Acceleration signals for direction Y 
tBodyAccstdZ - average of time measurement of the standard deviation of Body Acceleration signals for direction Z 
tGravityAccmeanX - average of time measurement of the mean of Gravity Acceleration signals for direction X 
tGravityAccmeanY - average of time measurement of the mean of  Gravity Acceleration signals for direction Y 
tGravityAccmeanZ - average of time measurement of the mean of  Gravity Acceleration signals for direction Z
tGravityAccstdX - average of time measurement of the standard deviation of Gravity Acceleration signals for direction X 
tGravityAccstdY - average of time measurement of the standard deviation of Gravity Acceleration signals for direction Y 
tGravityAccstdZ - average of time measurement of the standard deviation of Gravity Acceleration signals for direction Z 
tBodyAccJerkmeanX - average of time measurement of the mean of  Body Acceleration Jerk signals for direction X 
tBodyAccJerkmeanY - average of time measurement of the mean of  Body Acceleration Jerk signals for direction Y 
tBodyAccJerkmeanZ - average of time measurement of the mean of  Body Acceleration Jerk signals for direction Z 
tBodyAccJerkstdX - average of time measurement of the standard deviation of Body Acceleration Jerk signals for direction X 
tBodyAccJerkstdY - average of time measurement of the standard deviation of Body Acceleration Jerk signals for direction Y 
tBodyAccJerkstdZ - average of time measurement of the standard deviation of Body Acceleration Jerk signals for direction Z 
tBodyGyromeanX - average of time measurement of the mean of  Body Gyroscope signals for direction X 
tBodyGyromeanY - average of time measurement of the mean of  Body Gyroscope signals for direction Y 
tBodyGyromeanZ - average of time measurement of the mean of  Body Gyroscope signals for direction Z
tBodyGyrostdX - average of time measurement of the standard deviation of Body Gyroscope signals for direction X 
tBodyGyrostdY - average of time measurement of the standard deviation of Body Gyroscope signals for direction Y 
tBodyGyrostdZ - average of time measurement of the standard deviation of Body Gyroscope signals for direction Z 
tBodyGyroJerkmeanX - average of time measurement of the mean of  Body Gyroscope Jerk signals for direction X 
tBodyGyroJerkmeanY - average of time measurement of the mean of  Body Gyroscope Jerk signals for direction Y 
tBodyGyroJerkmeanZ - average of time measurement of the mean of  Body Gyroscope Jerk signals for direction Z 
tBodyGyroJerkstdX - average of time measurement of the standard deviation of Body Gyroscope Jerk signals for direction X 
tBodyGyroJerkstdY - average of time measurement of the standard deviation of Body Gyroscope Jerk signals for direction Y 
tBodyGyroJerkstdZ - average of time measurement of the standard deviation of Body Gyroscope Jerk signals for direction Z 
tBodyAccMagmean - average of time measurement of the mean of the magnitude of Body Acceleration signals
tBodyAccMagstd - average of time measurement of the standard deviation of the magnitude of Body Acceleration signals
tGravityAccMagmean - average of time measurement of the mean of the magnitude of Gravity Acceleration signals
tGravityAccMagstd - average of time measurement of the standard deviation of the magnitude of Gravity Acceleration signals
tBodyAccJerkMagmean - average of time measurement of the mean of magnitude of Body Acceleration Jerk signals
tBodyAccJerkMagstd - average of time measurement of the standard deviation of the magnitude of Body Acceleration Jerk signals 
tBodyGyroMagmean - average of time measurement of the mean of the Body Gyroscope signals 
tBodyGyroMagstd - average of time measurement of the standard deviation of the magnitude Body Gyroscope signals 
tBodyGyroJerkMagmean - average of time measurement of the mean of the magnitude Body Gyroscope Jerk signals 
tBodyGyroJerkMagstd - average of time measurement of the standard deviation of the magnitude Body Gyroscope Jerk signals 
fBodyAccmeanX - average of the frequency measurement of the mean of Body Acceleration signals for direction X
fBodyAccmeanY - average of the frequency measurement of the mean of Body Acceleration signals for direction Y
fBodyAccmeanZ - average of the frequency measurement of the mean of Body Acceleration signals for direction Z
fBodyAccstdX  - average of the frequency measurement of the standard deviation of Body Acceleration signals for direction X
fBodyAccstdY - average of the frequency measurement of the standard deviation of Body Acceleration signals for direction Y
fBodyAccstdZ - average of the frequency measurement of the standard deviation of Body Acceleration signals for direction Z
fBodyAccJerkmeanX - average of the frequency measurement of the mean of Body Acceleration Jerk signals for direction X
fBodyAccJerkmeanY - average of the frequency measurement of the mean of Body Acceleration Jerk signals for direction Y
fBodyAccJerkmeanZ - average of the frequency measurement of the mean of Body Acceleration Jerk signals for direction Z
fBodyAccJerkstdX - average of the frequency measurement of the standard deviation of Body Acceleration Jerk signals for direction X
fBodyAccJerkstdY - average of the frequency measurement of the standard deviation of Body Acceleration Jerk signals for direction Y
fBodyAccJerkstdZ - average of the frequency measurement of the standard deviation of Body Acceleration Jerk signals for direction Z
fBodyGyromeanX - average of the frequency measurement of the mean of Body Gyroscope signals for direction X
fBodyGyromeanY - average of the frequency measurement of the mean of Body Gyroscope signals for direction Y
fBodyGyromeanZ - average of the frequency measurement of the mean of Body Gyroscope signals for direction Z
fBodyGyrostdX - average of the frequency measurement of the standard deviation of Body Gyroscope signals for direction X
fBodyGyrostdY - average of the frequency measurement of the standard deviation of Body Gyroscope signals for direction Y
fBodyGyrostdZ - average of the frequency measurement of the standard deviation of Body Gyroscope signals for direction Z
fBodyAccMagmean - average of the frequency measurement of the mean of the magnitude of Body Acceleration signals
fBodyAccMagstd - average of the frequency measurement of the standard deviation of the magnitude of Body Acceleration signals 
fBodyBodyAccJerkMagmean - average of the frequency measurement of the mean of Body Acceleration Jerk signals
fBodyBodyAccJerkMagstd - average of the frequency measurement of the standard deviation of Body Acceleration Jerk signals
fBodyBodyGyroMagmean - average of the frequency measurement of the mean of the magnitude of Body Gyroscope signals
fBodyBodyGyroMagstd - average of the frequency measurement of the standard deviation of the magnitude of Body Gyroscope signals
fBodyBodyGyroJerkMagmean - average of the frequency measurement of the mean of the magnitude of Body Gyroscope Jerk signals
fBodyBodyGyroJerkMagstd - average of the frequency measurement of the standard deviation of the magnitude of Body Gyroscope Jerk signals
