# TidyData-
The raw data set is based on experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##The raw dataset includes the following files:


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


##The repo consists of 4 parts:
- run_analysis.R --> the script use to transform the raw data set to the tidy one
- Tidy.txt --> the tidy dataset (the output of running the abovementioned script)
- Codebook.md--> a markdown file containing information regarding the  transformation of the raw data to the tidy data set and some details on the final tidy data set
- README.md --> this file that describes the files in the repo and their relationship to each other

### run_analysis.R
contains the R script for the data transformation from raw to tidy data set as per the guidelines given in the project
- First of all the data is called in R
- Then the column names of the data sets are adjusted to their correct labels as mentioned in the features.txt file included in the raw data
- Then the data is merged in 1 data frame 'merged_data" that includes all data with 563 variables and 10299 observation
- Then a subset of the mean and standard deviation of each measurement is taken from the original data frame "merged_data"
- Then in the activities column each activity is labelled so that it describes the action performed instead of just containing an index, the information on the activity labels are from the 'activity_labels.txt' included in the raw data
- The names of the columns weren't very self descriptive so the abbreviations where replaced with full words so that the user of the data 'Tidy.txt" can easily undertand it
- Finally an independent tidy data set with the average of each variable for each activity and each subject

###Tidy.txt
The output data set after applying the run_analysis.R to the raw data

### Codebook.md
Includes information regarding the transformation and the Tidy data set 


