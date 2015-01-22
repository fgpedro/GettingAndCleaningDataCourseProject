run_analysis <- function() {
	## Load the dplyr package.  If the package is not installed, 
        ## install the package by commenting out the install.packages line
	install.packages("dplyr")
	library(dplyr)

	## Load the data.table package.  If the package is not installed, 
        ## install the package by commenting out the install.packages line
	install.packages("data.table")
	library(data.table)

	## Set the working directory
        ## Change the diretory to where the downloaded unzipped files are located
	setwd("C:/coursera/GettingandCleaningData/Course Project")

	## Import the training and test sets
	x_train <- read.table("X_train.txt")
	x_test  <- read.table("X_test.txt")

	## Merge the training and test sets
        human_activity_data <- rbind(x_train, x_test)

	## Import training and test activity labels
	y_train <- read.table("y_train.txt")
	y_test  <- read.table("y_test.txt")

	## Merge the training and test activity labels
	activity_labels <- rbind(y_train, y_test)	

	## Rename the column name of the merged training and test activity labels to "activity"
	setnames(activity_labels, c("activity"))

	## Import the subjects who performed the activities for both the training and testing sets
	subject_train <- read.table("subject_train.txt")
	subject_test  <- read.table("subject_test.txt")

	## Merge the training and test subjects
	subjects <- rbind(subject_train, subject_test)	

	## Rename the column name of the training and test subjects to "subject"
	setnames(subjects, c("subject"))

	## Part 1: Merge the training and test sets, subjects and measurement labels into one data set
        measured_human_activity_data <- cbind(activity_labels, subjects, human_activity_data)

	## Import the feature labels
	feature_labels  <- read.table("features.txt")

	## Extract measurements on the mean for each measurement
	meanstd_data <- data.frame(measure_id = grep("mean()", feature_labels[,2], fixed=T))

	## Extract measurements on the standard deviation for each measurement
        ## and merge the mean and standard deviation measurements
	meanstd_data <- rbind(meanstd_data, data.frame(measure_id = grep("std()", feature_labels[,2], fixed=T)))

	## Sort the data by column numbers
        meanstd_data <- sort(meanstd_data$measure_id)

	## Part 2: Extracts only the measurements on the mean and standard deviation for each measurement
        human_activity_meanstd_data <- select(measured_human_activity_data, activity, subject, num_range("V", c(meanstd_data)))

	## Import the activity labels file
	activities <- read.table("activity_labels.txt")

	## Part 3: Uses descriptive activity names to name the activities in the data set
	## Replace activity labels with activity description
	activity_id <- 1
	for (activity in activities[,2]) {
		human_activity_meanstd_data[,1][human_activity_meanstd_data[,1] == activity_id] <- activity
		activity_id <- activity_id + 1
	}

	## Cleanup feature descriptions so that these can be used a column names
	feature_labels$V2 <- make.names(feature_labels$V2)
	feature_labels$V2 <- gsub("\\.", "", feature_labels$V2)

	## Get the feature description of the measurements on the mean and standard deviation
	var_names <- data.frame(col_names = rbind(c("activity"), c("subject")))

	for (i in seq_along(meanstd_data)) {
		var_names <- rbind(var_names, data.frame(col_names = feature_labels[meanstd_data[i],2]))
	}

	## Part 4: Appropriately labels the data set with descriptive variable names
	
	## Set column names to feature description
	names(human_activity_meanstd_data) <- as.character(var_names[,1])

        ## 5: From the data set in step 4, creates a second, independent tidy data set with the average of each 
	## variable for each activity and each subject

	## group dataset by activity and subject
	ha_data_by_act_sub <- group_by(human_activity_meanstd_data, activity, subject)

	## summarize data with average of each variable
	tidy_data <- summarize(ha_data_by_act_sub, tBodyAccmeanX = mean(tBodyAccmeanX), 
			tBodyAccmeanY = mean(tBodyAccmeanY), tBodyAccmeanZ = mean(tBodyAccmeanZ),
			tBodyAccstdX  = mean(tBodyAccstdX), tBodyAccstdY  = mean(tBodyAccstdY), 
			tBodyAccstdZ = mean(tBodyAccstdZ), tGravityAccmeanX = mean(tGravityAccmeanX), 
			tGravityAccmeanY = mean(tGravityAccmeanY), tGravityAccmeanZ = mean(tGravityAccmeanZ),
			tGravityAccstdX = mean(tGravityAccstdX), tGravityAccstdY = mean(tGravityAccstdY), 
			tGravityAccstdZ = mean(tGravityAccstdZ), tBodyAccJerkmeanX = mean(tBodyAccJerkmeanX), 
			tBodyAccJerkmeanY = mean(tBodyAccJerkmeanY), tBodyAccJerkmeanZ = mean(tBodyAccJerkmeanZ), 
			tBodyAccJerkstdX = mean(tBodyAccJerkstdX), tBodyAccJerkstdY = mean(tBodyAccJerkstdY), 
			tBodyAccJerkstdZ = mean(tBodyAccJerkstdZ), tBodyGyromeanX = mean(tBodyGyromeanX), 
			tBodyGyromeanY = mean(tBodyGyromeanY), tBodyGyromeanZ = mean(tBodyGyromeanZ),
			tBodyGyrostdX = mean(tBodyGyrostdX), tBodyGyrostdY = mean(tBodyGyrostdY), 
			tBodyGyrostdZ = mean(tBodyGyrostdZ), tBodyGyroJerkmeanX = mean(tBodyGyroJerkmeanX), 
			tBodyGyroJerkmeanY = mean(tBodyGyroJerkmeanY), tBodyGyroJerkmeanZ = mean(tBodyGyroJerkmeanZ), 
			tBodyGyroJerkstdX = mean(tBodyGyroJerkstdX), tBodyGyroJerkstdY = mean(tBodyGyroJerkstdY), 
			tBodyGyroJerkstdZ = mean(tBodyGyroJerkstdZ), tBodyAccMagmean = mean(tBodyAccMagmean),
			tBodyAccMagstd = mean(tBodyAccMagstd), tGravityAccMagmean = mean(tGravityAccMagmean), 
			tGravityAccMagstd = mean(tGravityAccMagstd), tBodyAccJerkMagmean = mean(tBodyAccJerkMagmean), 
			tBodyAccJerkMagstd = mean(tBodyAccJerkMagstd), tBodyGyroMagmean = mean(tBodyGyroMagmean), 
			tBodyGyroMagstd = mean(tBodyGyroMagstd), tBodyGyroJerkMagmean = mean(tBodyGyroJerkMagmean), 
			tBodyGyroJerkMagstd = mean(tBodyGyroJerkMagstd), fBodyAccmeanX = mean(fBodyAccmeanX), 
			fBodyAccmeanY = mean(fBodyAccmeanY), fBodyAccmeanZ = mean(fBodyAccmeanZ), 
			fBodyAccstdX = mean(fBodyAccstdX), fBodyAccstdY = mean(fBodyAccstdY), 
			fBodyAccstdZ = mean(fBodyAccstdZ), fBodyAccJerkmeanX = mean(fBodyAccJerkmeanX), 
			fBodyAccJerkmeanY = mean(fBodyAccJerkmeanY), fBodyAccJerkmeanZ = mean(fBodyAccJerkmeanZ), 
			fBodyAccJerkstdX = mean(fBodyAccJerkstdX), fBodyAccJerkstdY = mean(fBodyAccJerkstdY), 
			fBodyAccJerkstdZ = mean(fBodyAccJerkstdZ), fBodyGyromeanX = mean(fBodyGyromeanX), 
			fBodyGyromeanY = mean(fBodyGyromeanY), fBodyGyromeanZ = mean(fBodyGyromeanZ), 
			fBodyGyrostdX = mean(fBodyGyrostdX), fBodyGyrostdY = mean(fBodyGyrostdY), 
			fBodyGyrostdZ = mean(fBodyGyrostdZ), fBodyAccMagmean = mean(fBodyAccMagmean),
			fBodyAccMagstd = mean(fBodyAccMagstd), fBodyBodyAccJerkMagmean = mean(fBodyBodyAccJerkMagmean), 
			fBodyBodyAccJerkMagstd = mean(fBodyBodyAccJerkMagstd), fBodyBodyGyroMagmean = mean(fBodyBodyGyroMagmean),   
			fBodyBodyGyroMagstd  = mean(fBodyBodyGyroMagstd), fBodyBodyGyroJerkMagmean = mean(fBodyBodyGyroJerkMagmean), 
			fBodyBodyGyroJerkMagstd= mean(fBodyBodyGyroJerkMagstd))

	## Output the datas into a text file
	write.table(tidy_data, "tidy_data.txt", row.name=F)
}
