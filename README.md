# Readme File

This file explains the objective and steps for the getting and cleaning data project.

The project have five requirements:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

The steps for the above objective is implemented in the file "run_analysis.R".  
Download the file into a project directory then set the working directory on your Rstudio to that folder and run the file, if for some reason of security or otherwise the file can't download the dataset, download it manually into the project directory and just comment the first step.

The file implements the following steps:  
1. Downloading data file to workspace directory.  
2. Unzip dataset to workspace directory.  
3. Reading training data and test data and merging them into one data set.  
4. Reading the columns name from features.txt file.  
5. Setting the column names on the train and test data.  
6. Selecting the measurements on the mean and standard deviation for each measurement.  
7. Reading names of activity from file and replacing each activity id with its name.  
8. Renaming column names with descriptive names.  
9. Creating tidy data by grouping with Subject Name and Activity and getting mean of each variable for that grouping.  
10. Writing tidy data to file.  

The repository also contains the Tidy_data.csv and Tidy_data.txt which is the output of the analysis steps as well as a Codebook for the data variables.  
