#CodeBook

##Data:
#####Data was collected from the accelerometers within a Samsung Galaxy S smartphone from 30 participants while they performed 6 activities (walking, walking up stairs, walking down stairs, sitting, standing, and laying). 
#####Project Description (desription of how data was acquired): http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#####Data was obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#####Acceleration (total and body) was measured in g's (gravity of earth -> 9.80665 m/seg2). 
#####Gyroscope measurements were taken in rad/seg. 
#####The data was normalized to values ranging from -1 to 1. Therefore they are now unitless.

##Transformations:

* Training and Testing data sets were combined
* Only the measurements that represent a mean or standard deviation (not including meanFreq.) were retained
* Activity codes were converted to descriptive activity labels
* Data was averaged for each participant for each activity
* Column names were made more descriptive (removed special characters, changed t-> Time/f-> Freq, column names 
  were converted to camelCase to improve readability, and names were updated to reflect the average transformations performed)

##Variables:
Using the phones embedded accelerometer and gyroscope, readings of 3-axial linear acceleration (Acc) and 3-axial angular velocity (Gyro) at a constant rate of 50Hz were taken.
The sensor acceleration signal was separated into the gravitational (Gravity) and body (Body) motion components using a Butterworth low-pass filter. 
Data was processed both within the time (Time) and frequency (Freq) domains. 

* subjectid
* activity
* meanTimeBodyAccMagMean           
* meanTimeBodyAccMagStDev          
* meanTimeGravityAccMagMean        
* meanTimeGravityAccMagStDev      
* meanTimeBodyAccJerkMagMean       
* meanTimeBodyAccJerkMagStDev      
* meanTimeBodyGyroMagMean          
* meanTimeBodyGyroMagStDev        
* meanTimeBodyGyroJerkMagMean      
* meanTimeBodyGyroJerkMagStDev   
* meanFreqBodyAccMagMean           
* meanFreqBodyAccMagStDev          
* meanFreqBodyBodyAccJerkMagMean   
* meanFreqBodyBodyAccJerkMagStDev 
* meanFreqBodyBodyGyroMagMean      
* meanFreqBodyBodyGyroMagStDev     
* meanFreqBodyBodyGyroJerkMagMean  
* meanFreqBodyBodyGyroJerkMagStDev

###In the X, Y, and Z planes

* meanTimeBodyAccMean + (X|Y|Z)            
* meanTimeBodyAccStDev + (X|Y|Z)            
* meanTimeGravityAccMean + (X|Y|Z)           
* meanTimeGravityAccStDev + (X|Y|Z)          
* meanTimeBodyAccJerkMean + (X|Y|Z)          
* meanTimeBodyAccJerkStDev + (X|Y|Z)         
* meanTimeBodyGyroMean + (X|Y|Z)             
* meanTimeBodyGyroStDev + (X|Y|Z)            
* meanTimeBodyGyroJerkMean + (X|Y|Z)         
* meanTimeBodyGyroJerkStDev + (X|Y|Z)  
* meanFreqBodyAccMean + (X|Y|Z)            
* meanFreqBodyAccStDev + (X|Y|Z)           
* meanFreqBodyAccJerkMean + (X|Y|Z)         
* meanFreqBodyAccJerkStDev + (X|Y|Z)        
* meanFreqBodyGyroMean + (X|Y|Z)            
* meanFreqBodyGyroStDev + (X|Y|Z)
