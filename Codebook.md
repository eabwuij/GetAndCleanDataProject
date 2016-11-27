# Code Book File

This file list the variables of the data, the data features as explained in the original feature file.  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  


The following steps are performed for creating the tidy data:  
1.downloading data file to workspace directory.  
2.unzip dataset to workspace directory.  
3.reading training data and test data and merging them into one data set.  
4.reading the columns name from features.txt file.  
5.setting the column names on the train and test data.  
6. Selecting the measurements on the mean and standard deviation for each measurement.  
7.Reading names of activity from file and replacing each activity id with its name.  
8. Renaming column names with descriptive names.  
9. Creating tidy data by grouping with Subject Name and Activity and getting mean of each variable for that grouping.  
10. Writing tidy data to file.  


Thus the final tidy data contains 88 variables for the average of each mean and standard deiviation of measuremants , each row has the subject id and the activity id with the values for the average measurement. Following sit the final list of variables of the tidy data all averaged.  
SubjectID  
Activity  
tBodyAccelerometer.mean...X  
tBodyAccelerometer.mean...Y  
tBodyAccelerometer.mean...Z  
tGravityAccelerometer.mean...X  
tGravityAccelerometer.mean...Y  
tGravityAccelerometer.mean...Z  
tBodyAccelerometerJerk.mean...X  
tBodyAccelerometerJerk.mean...Y  
tBodyAccelerometerJerk.mean...Z  
tBodyGyroscope.mean...X  
tBodyGyroscope.mean...Y  
tBodyGyroscope.mean...Z  
tBodyGyroscopeJerk.mean...X  
tBodyGyroscopeJerk.mean...Y  
tBodyGyroscopeJerk.mean...Z  
tBodyAccelerometerMagnitude.mean..  
tGravityAccelerometerMagnitude.mean..  
tBodyAccelerometerJerkMagnitude.mean..  
tBodyGyroscopeMagnitude.mean..  
tBodyGyroscopeJerkMagnitude.mean..  
FFTFrequencyAccelerometer.mean...X  
FFTFrequencyAccelerometer.mean...Y  
FFTFrequencyAccelerometer.mean...Z  
FFTFrequencyAccelerometer.meanFreq...X  
FFTFrequencyAccelerometer.meanFreq...Y  
FFTFrequencyAccelerometer.meanFreq...Z  
FFTFrequencyAccelerometerJerk.mean...X  
FFTFrequencyAccelerometerJerk.mean...Y  
FFTFrequencyAccelerometerJerk.mean...Z  
FFTFrequencyAccelerometerJerk.meanFreq...X  
FFTFrequencyAccelerometerJerk.meanFreq...Y  
FFTFrequencyAccelerometerJerk.meanFreq...Z  
FFTFrequencyGyroscope.mean...X  
FFTFrequencyGyroscope.mean...Y  
FFTFrequencyGyroscope.mean...Z  
FFTFrequencyGyroscope.meanFreq...X  
FFTFrequencyGyroscope.meanFreq...Y  
FFTFrequencyGyroscope.meanFreq...Z  
FFTFrequencyAccelerometerMagnitude.mean..  
FFTFrequencyAccelerometerMagnitude.meanFreq..  
FFTFrequencyBodyAccelerometerJerkMagnitude.mean..  
FFTFrequencyBodyAccelerometerJerkMagnitude.meanFreq..  
FFTFrequencyBodyGyroscopeMagnitude.mean..  
FFTFrequencyBodyGyroscopeMagnitude.meanFreq..  
FFTFrequencyBodyGyroscopeJerkMagnitude.mean..  
FFTFrequencyBodyGyroscopeJerkMagnitude.meanFreq..  
angle.tBodyAccelerometerMean.gravity.  
angle.tBodyAccelerometerJerkMean..gravityMean.  
angle.tBodyGyroscopeMean.gravityMean.  
angle.tBodyGyroscopeJerkMean.gravityMean.  
angle.X.gravityMean.  
angle.Y.gravityMean.  
angle.Z.gravityMean.  
tBodyAccelerometer.std...X  
tBodyAccelerometer.std...Y  
tBodyAccelerometer.std...Z  
tGravityAccelerometer.std...X  
tGravityAccelerometer.std...Y  
tGravityAccelerometer.std...Z  
tBodyAccelerometerJerk.std...X  
tBodyAccelerometerJerk.std...Y  
tBodyAccelerometerJerk.std...Z  
tBodyGyroscope.std...X  
tBodyGyroscope.std...Y  
tBodyGyroscope.std...Z  
tBodyGyroscopeJerk.std...X  
tBodyGyroscopeJerk.std...Y  
tBodyGyroscopeJerk.std...Z  
tBodyAccelerometerMagnitude.std..  
tGravityAccelerometerMagnitude.std..  
tBodyAccelerometerJerkMagnitude.std..  
tBodyGyroscopeMagnitude.std..  
tBodyGyroscopeJerkMagnitude.std..  
FFTFrequencyAccelerometer.std...X  
FFTFrequencyAccelerometer.std...Y  
FFTFrequencyAccelerometer.std...Z  
FFTFrequencyAccelerometerJerk.std...X  
FFTFrequencyAccelerometerJerk.std...Y  
FFTFrequencyAccelerometerJerk.std...Z  
FFTFrequencyGyroscope.std...X  
FFTFrequencyGyroscope.std...Y  
FFTFrequencyGyroscope.std...Z  
FFTFrequencyAccelerometerMagnitude.std..  
FFTFrequencyBodyAccelerometerJerkMagnitude.std..  
FFTFrequencyBodyGyroscopeMagnitude.std..  
FFTFrequencyBodyGyroscopeJerkMagnitude.std..  
