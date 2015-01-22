==================================================================
Getting and Cleaning Data Course Project
run_analysis function
Author: FGP
Version 1.0
==================================================================

The run_analysis function contains R scripts that peforms the following:
1. Import data from several text files containing information collected
   from the accelerometers from the Samsung Galaxy S smartphones 
   measuring human activities for 30 volunteers.
2. Merges the various data sets into data set
3. Extracts data (measurements) pertaining to mean and standard deviation
   measurements from the aggregated data set.
4. Clean the data set by replacing activity labels with activity description
   and assigning measurement descriptions to the column names of the data set.
5. Create a tidy data set which contains the average of the selected measurements
   group by activity and subject.
6. Output the tidy data set into a text file.

The items mentioned above are achieved through R scripts, which in return perform
functions that achieve the requirements of this course project (5 Parts - described
below)

Part 1: Merge the training and test sets, subjects and measurement labels into one data set

The script first loads the packages the are necessary for the R command to function.  It
is assumed that the packages are installed.  However, if the packages are not installed
a code in the script is provided, so that the packages can be installed by removing
the comment characters (##) such that the script will be executed.

The script assumes that the run_analysis.R file and the downloaded unzipped files
are all located in the working directory.  A code is also provided to execute
a command to set the working directory to where the R script and the text files
needed for the analysis are located.

After the preliminary setup is completed, the script imports the data files into
 R datasets.  The files that are imported are:
	1. X_train.txt (training measurement data)
	2. X_test.txt (test measurement data)
	3. y_train.txt (training activity labels/code)
	4. y_test.txt (test activity labels/code)
	5. subject_train.txt (volunteers who performed the training activities)
	6. subject_test.txt (volunteers who performed the test activities)

The data sets created by the import steps mentioned above are then merged into
one data set.

Part 2: Extracts only the measurements on the mean and standard deviation for each measurement

This section of the script determines the measurements (mean and standard deviation) that
will be used to create a subset of the original data set.  The features.txt file, which
contains the measurement descriptions, is imported into an R data set.  From this data set,
the measurements which pertain to mean() and std() are selected and the subset data is saved
into another data set.

Part 3: Uses descriptive activity names to name the activities in the data set

This section imports the activity_labels.txt file, which contains the mapping of the
activity label or code (1,2,3,4,5,6) into activity description (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
).  The activity label in the merged data set
created in step one is updated to contain the activity description.

Part 4: Appropriately labels the data set with descriptive variable names

In this section, the measurement descriptions are cleaned up by removing - and ()
and ..  The measurement descriptions are then used to update the generic column
names of the data set created in Part 2, to give the column names descriptive names
of what they measure.

5: From the data set in step 4, creates a second, independent tidy data set with the average of each 
   variable for each activity and each subject

In the final section, a tidy data set is created by grouping the data by activity and subset
and calculating the mean of each measurements.  The tidy data is then output into a text file
using the write.table() command.  The text file is created in the working directory.  The same
directory where the input files are located.
