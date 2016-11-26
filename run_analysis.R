#This script contains the steps to fulfill the Getting and Cleaning Data Course Project
#1. Downloading the set to my workspace directory
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="./dataset.zip",method="curl") # Mac
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="./dataset.zip") # Windows

#2. Unzip the dataset in the workspace directory
unzip("./dataset.zip")

#3. Reading trainingdata and testdata 
#3a. Reading the trainingdata (data, labels, subjects, see README.txt)
trainData<-read.table("./UCI HAR Dataset/train/X_train.txt")
str(traindata)
trainDataLabels<-read.table("./UCI HAR Dataset/train/y_train.txt")
names(trainDataLabels)<-"Activity"
str(trainDataLabels)
trainDataSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt")
str(trainDataSubjects)
names(trainDataSubjects)<-"SubjectID"

#3b. Reading the testdata (data, labels, subjects, see README.txt) same way as trainingdata
testData<-read.table("./UCI HAR Dataset/test/X_test.txt")
str(testData)
testDataLabels<-read.table("./UCI HAR Dataset/test/y_test.txt")
str(testDataLabels)
names(testDataLabels)<-"Activity"
testDataSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt")
str(testDataSubjects)
names(testDataSubjects)<-"SubjectID"

#4. Reading the columns name from features.txt
colnamesData<-read.table("./UCI HAR Dataset/features.txt",header=FALSE,strip.white=TRUE,colClasses=c(rep("NULL",1),rep("factor",1)))
colnames<-unlist(colnamesData)

#5. Setting the column names on the train and test data
names(trainData)<-colnames
names(testData)<-colnames

#5a. Column bind the three tables (train): features value, activity label and subjectid per observation
allTrainData<-cbind(trainData,trainDataLabels,trainDataSubjects)
#5b. Column bind the three tables (test): features value, activity label and subjectid per observation
allTestData<-cbind(testData,testDataLabels,testDataSubjects)

#6. Merging the train and test data, using rbind() (Requirement 1 of Course Project)
allData<-rbind(allTrainData,allTestData)
str(allData)
valid_column_names <- make.names(names=names(allData), unique=TRUE, allow_ = TRUE)
names(allData) <- valid_column_names  #de-duplication column names

#7. Selecting the measurements on the mean and standard deviation for each measurement (Requirement 2 of Course Project)
library(dplyr)
meanAndStdDevData<-select(allData,contains("mean"),contains("std"),contains("Activity"),contains("SubjectID"))
str(meanAndStdDevData) #should be same number of observation as allData but with less variables/columns

#8.Reading names of activity from file and replacing each activity id with its name (Requirement 3 of Course Project)
activitynames<-read.table("./UCI HAR Dataset/activity_labels.txt")
#Replacting the activity number by its name
meanAndStdDevData<-mutate(meanAndStdDevData,Activity=activitynames[Activity,2])

#9. Renaming column names with descriptive names (Requirement 4 of Course Project)
# Acc -> Accelerometer
# Gyro -> Gyroscope 
# Mag -> Magnitude
# fBody -> FFTFrequency
names(meanAndStdDevData)<-gsub("Acc","Accelerometer",names(meanAndStdDevData))
names(meanAndStdDevData)<-gsub("Gyro","Gyroscope",names(meanAndStdDevData))
names(meanAndStdDevData)<-gsub("Mag","Magnitude",names(meanAndStdDevData))
names(meanAndStdDevData)<-gsub("fBody","FFTFrequency",names(meanAndStdDevData))

#10. Creating tidy data by grouping with Subject Name and Activity and getting mean of each variable for that grouping(Requirement 5)
groupSubjectAndActivity<-group_by(meanAndStdDevData,SubjectID,Activity)
tidyData<-summarise_each(groupSubjectAndActivity,funs(mean))
#10a. Viewing tidy data
View(tidyData)

#10b. writing tidy data to txt-file 
write.table(tidy_data, file = "Tidy_data.txt", sep = ",", row.names = FALSE)

#10c. writing tidy data to csv-file
write.table(tidy_data, file = "Tidy_data.csv", sep = ",", row.names = FALSE)