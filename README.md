GettingAndCleaningDataProject
Getting and Cleaning Data's Course Project


===========

The requirement of project are:
create one R script called run_analysis.R that does the following

* Step 1. Merges the training and the test sets to create one data set.
* Step 2. Extracts only the measurements on the mean and standard deviation for each measurement
* Step 3. Uses descriptive activity names to name the activities in the data set
* Step 4. Appropriately labels the data set with descriptive variable names
* Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
* 
Please find the main code in run_analysis.R
This script file contain function name run_analysis which will:

1. Read Samsung data of Coursera Project
2. Perform analysis tasks that required by course project
3. return data set in step 5

Note:
To run this script, make sure that following file is in your working directory:
* X_test.txt
* X_train.txt
* y_train.txt
* y_test.txt
* subject_test.txt
* subject_train.txt
* features.txt
* activity_labels.txt
