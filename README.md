# GetAndCleanData

###Purpose: 
#####demonstrate your ability to collect, work with, and clean a data set. 
###Goal: 
#####prepare tidy data that can be used for later analysis from the data described below.

###Data:
#####Data was collected from the accelerometers within a Samsung Galaxy S smartphone from 30 participants while they performed 6 activities (walking, walking up stairs, walking down stairs, sitting, standing, and laying). 
#####Project Description (desription of how data was acquired): http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#####Data was obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Files Included:

  * run_analysis.R = described in detail below
  * tidyData.txt = output from run_analysis.R
  * README.md = describes this repo and files included
  * CodeBook.md = describes the data and variables contained within the tidyData.txt file

##run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
