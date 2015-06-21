Codebook
========

Tidy Data Set
-------------

The data set set submitted is a dataset formed of \#\#\# 75 variable
These variables represent 73 measurements and 2 other columns

-   The first column represent the participant number ranging
    ascendingly from 1 till 30 representing 30 participants
    participating

-   The second column represents the type of activity performed by the
    participant

-   From the 3rd column till the 75th column these are the measurements

Raw data set included
---------------------

-   'README.txt'

-   'features\_info.txt': Shows information about the variables used on
    the feature vector.

-   'features.txt': List of all features.

-   'activity\_labels.txt': Links the class labels with their activity
    name.

-   'train/X\_train.txt': Training set.

-   'train/y\_train.txt': Training labels.

-   'test/X\_test.txt': Test set.

-   'test/y\_test.txt': Test labels.

And then these .txt files where used and transformed to form the final
tidy data set

Transformation
--------------

Using the run\_analysis.R script

-   First the train and test data sets where merged to form a
    comprehensive data set

-   Second using the data from features.txt the column names where
    replaced with the correct labels to each variable

-   Then from the total merged data set the variables including the mean
    and the standard deviation measurements where extracted from the
    merged data set

-   Since the labels given in the features.txt file where mainly
    abbreviations, the labels where adjusted so that they are more
    understandable

-   Finally the resulting tidy data set is a dataset with the average of
    each measurement variable for each activity and each subject.

Details regarding the variables in the tidy data set
----------------------------------------------------

-   'Participant' represents the volunteer number: there are essentially
    30 volunteers so this variable will range from 1 till 30
-   Activities represents the activity performed by the participant :
    there 6 different activities \>\>*WALKING* \>\>*WALKING\_UPSTAIRS*
    \>\>*WALKING\_DOWNSTAIRS* \>\>*SITTING* \>\>*STANDING* \>\>*LAYING*

-   The measurment variables are 73 variables (of originally 561)
    \>\>These measurements variables are those variables of the original
    (raw) data set that are have mean and standard deviations \>\> The
    final tidy data set has the average value of every variable of the
    73 The variables are:

[1] "participants"\
 [2] "activities"\
 [3] "timeBodyAccelerator-mean()-X"\
 [4] "timeBodyAccelerator-mean()-Y"\
 [5] "timeBodyAccelerator-mean()-Z"\
 [6] "timeGravityAccelerator-mean()-X"\
 [7] "timeGravityAccelerator-mean()-Y"\
 [8] "timeGravityAccelerator-mean()-Z"\
 [9] "timeBodyAcceleratorJerk-mean()-X"\
[10] "timeBodyAcceleratorJerk-mean()-Y"\
[11] "timeBodyAcceleratorJerk-mean()-Z"\
[12] "timeBodyGyroscope-mean()-X"\
[13] "timeBodyGyroscope-mean()-Y"\
[14] "timeBodyGyroscope-mean()-Z"\
[15] "timeBodyGyroscopeJerk-mean()-X"\
[16] "timeBodyGyroscopeJerk-mean()-Y"\
[17] "timeBodyGyroscopeJerk-mean()-Z"\
[18] "timeBodyAcceleratorMagnitude-mean()"\
[19] "timeGravityAcceleratorMagnitude-mean()"\
[20] "timeBodyAcceleratorJerkMagnitude-mean()"\
[21] "timeBodyGyroscopeMagnitude-mean()"\
[22] "timeBodyGyroscopeJerkMagnitude-mean()"\
[23] "frequencyBodyAccelerator-mean()-X"\
[24] "frequencyBodyAccelerator-mean()-Y"\
[25] "frequencyBodyAccelerator-mean()-Z"\
[26] "frequencyBodyAcceleratorJerk-mean()-X"\
[27] "frequencyBodyAcceleratorJerk-mean()-Y"\
[28] "frequencyBodyAcceleratorJerk-mean()-Z"\
[29] "frequencyBodyGyroscope-mean()-X"\
[30] "frequencyBodyGyroscope-mean()-Y"\
[31] "frequencyBodyGyroscope-mean()-Z"\
[32] "frequencyBodyAcceleratorMagnitude-mean()"\
[33] "frequencyBodyBodyAcceleratorJerkMagnitude-mean()" [34]
"frequencyBodyBodyGyroscopeMagnitude-mean()"\
[35] "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"\
[36] "angle(tBodyAcceleratorMean,gravity)"\
[37] "angle(tBodyAcceleratorJerkMean),gravityMean)"\
[38] "angle(tBodyGyroscopeMean,gravityMean)"\
[39] "angle(tBodyGyroscopeJerkMean,gravityMean)"\
[40] "angle(X,gravityMean)"\
[41] "angle(Y,gravityMean)"\
[42] "angle(Z,gravityMean)"\
[43] "timeBodyAccelerator-std()-X"\
[44] "timeBodyAccelerator-std()-Y"\
[45] "timeBodyAccelerator-std()-Z"\
[46] "timeGravityAccelerator-std()-X"\
[47] "timeGravityAccelerator-std()-Y"\
[48] "timeGravityAccelerator-std()-Z"\
[49] "timeBodyAcceleratorJerk-std()-X"\
[50] "timeBodyAcceleratorJerk-std()-Y"\
[51] "timeBodyAcceleratorJerk-std()-Z"\
[52] "timeBodyGyroscope-std()-X"\
[53] "timeBodyGyroscope-std()-Y"\
[54] "timeBodyGyroscope-std()-Z"\
[55] "timeBodyGyroscopeJerk-std()-X"\
[56] "timeBodyGyroscopeJerk-std()-Y"\
[57] "timeBodyGyroscopeJerk-std()-Z"\
[58] "timeBodyAcceleratorMagnitude-std()"\
[59] "timeGravityAcceleratorMagnitude-std()"\
[60] "timeBodyAcceleratorJerkMagnitude-std()"\
[61] "timeBodyGyroscopeMagnitude-std()"\
[62] "timeBodyGyroscopeJerkMagnitude-std()"\
[63] "frequencyBodyAccelerator-std()-X"\
[64] "frequencyBodyAccelerator-std()-Y"\
[65] "frequencyBodyAccelerator-std()-Z"\
[66] "frequencyBodyAcceleratorJerk-std()-X"\
[67] "frequencyBodyAcceleratorJerk-std()-Y"\
[68] "frequencyBodyAcceleratorJerk-std()-Z"\
[69] "frequencyBodyGyroscope-std()-X"\
[70] "frequencyBodyGyroscope-std()-Y"\
[71] "frequencyBodyGyroscope-std()-Z"\
[72] "frequencyBodyAcceleratorMagnitude-std()"\
[73] "frequencyBodyBodyAcceleratorJerkMagnitude-std()" [74]
"frequencyBodyBodyGyroscopeMagnitude-std()"\
[75] "frequencyBodyBodyGyroscopeJerkMagnitude-std()" -
