#CODE BOOK
This is codebook for output of funtion in run_analysis.R

##Sources
The script using following file as source:
* X_test.txt
* X_train.txt
* y_train.txt
* y_test.txt
* subject_test.txt
* subject_train.txt
* features.txt
* activity_labels.txt

##Transform's steps
Transormation include 5 steps:

### Step 1: Merges the training and the test sets to create one data set.
In this step, I use `rbind()` to merge data `X_test.txt` with `X_train.txt` and `y_test.txt` with `y_train.txt` to create 2 new dataset that I call X_DS and Y_DS:
* **X_DS**: merge X_test.txt and x_train.txt
* **Y_DS**: merge y_test.txt and y_train.txt

### Step 2. Extracts only the measurements on the mean and standard deviation for each measurement
In this step I remove all column in X_DS except column which columnname contain `"mean()"` or `"std()"`.

Columname of X_DS get from `features.txt`

### Step 3. Uses descriptive activity names to name the activities in the data set
This step will merge (join) dataset `Y_DS` with `activity_labels.txt` to get description for activiti ID in Y_DS.

This stepp will add a variable into Y_DS (which is label of first variable)

### Step 4. Appropriately labels the data set with descriptive variable names
In this step, we add names attribute for `X_DS` using `features.txt`

### Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

this step will aggregate data of X_DS by activities and subject using `aggregate()` function

Activities is Y_DS (get description only - second variable)
Subject get from `rbind()` `subject_train.txt` and  `subject_test.txt`
