library(plyr)

#Download the Data
if(!file.exists("./UCI Har Dataset")){ #Check if the data exists and was unzipped
  if(!file.exists("data.zip")){ #check for zip file
    #if no zip file present, download the file to current directory
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, "./data.zip", mode="wb")
  }
  unzip("./data.zip") #unzip data
}

#Read in files
#names for activities in y_* files
activity_labels <- read.table("./UCI Har Dataset/activity_labels.txt", sep=" ", 
                        na.strings="N/A", col.names=c("code", "activity"))

#names for columns in x_* files
features <- read.table("./UCI HAR Dataset/features.txt", sep=" ",
                       na.strings="N/A", col.names=c("code", "feature"))

#train files
subjects_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="", na.strings="N/A", col.names="subjectid")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep="", na.strings = "N/A", col.names=features[,2])
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", sep="", na.strings = "N/A", col.name="activitycode")

#test files
subjects_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="", na.strings="N/A", col.names="subjectid")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep="", na.strings = "N/A", col.names=features[,2])
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", sep="", na.strings = "N/A", col.name="activitycode")

#Bind data together
#Merge the training and test sets to create one data set (via row binds)
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)
subjects <- rbind(subjects_test, subjects_train)

#Extract only the measurements on the mean and standard deviation for each measurement. 
x <- x[,grep("(mean\\.)+|(std\\.)+", names(x))]

# Combine the subjecs, x, and y data (via column binds)
all <- cbind(subjects, x, y)

#Uses descriptive activity names to name the activities in the data set
all <- merge(all, activity_labels, by.x="activitycode", by.y="code", all.x=TRUE) analy
all$activitycode <- NULL

#From the data set in step 4, creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject.
tidyData <- ddply(all, .(subjectid, activity), numcolwise(mean))

names(tidyData)[3:length(names(tidyData))] <- transformColumnNames(names(tidyData)[3:length(names(tidyData))])

write.table(tidyData, file="tidyData.txt", row.names=FALSE)

transformColumnNames <- function(names){
 names <- gsub("\\.", "", names) #take out .
 names <- gsub("^t", "Time", names) #change starting t to Time
 names <- gsub("^f", "Freq", names) #change starting f to Freq
 names <- gsub("mean", "Mean", names) #capitalize mean
 names <- gsub("std", "StDev", names) #capitalize mean
 names <- paste("mean", names, sep="") #add mean to the beginning of the column name
}