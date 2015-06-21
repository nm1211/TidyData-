
## read the datasets in R 
train<- read.table("./train/X_train.txt")
test<- read.table("./test/X_test.txt")
ytrain<- read.table("./train/Y_train.txt")
ytest<- read.table("./test/Y_test.txt")
subtrain<-  read.table("./train/subject_train.txt")
subtest<- read.table("./test/subject_test.txt")
features<- read.table("features.txt")
## adjust column names so that they are appropriately labeled
colnames(train) <- t(features[2])
colnames(test) <- t(features[2])
## step1: start merging the individual datasets in the train folder together so that the 
#dataframe includes the variables the activities and the participants in the training
# same applies to the test data
train$activities <- ytrain[, 1]
train$participants <- subtrain[, 1]
test$activities <- ytest[, 1]
test$participants <- subtest[, 1]
## merging the both data frames train and test by binding the rows to each other
# the new dataframe is merged datafram containing first the data of train and then that of test
merged_data<- rbind(train, test)

## step 2: subset the mean and standard deviation of each measurement
mean <- grep("mean()", names(merged_data), value = FALSE, fixed=TRUE)
mean <- append(mean, 555:563)
meandf<- merged_data[mean]

STD <- grep("std()", names(merged_data), value = FALSE)
std<- merged_data[STD]

merged_data<- cbind(meandf, std)
##step 3: Use descriptive activity names to name the activities in the data set
# in order to make it easier to replace with strings, change the class of the activities column to character
merged_data$activities <- as.character(merged_data$activities)
 merged_data$activities[ merged_data$activities== 1] <- "Walking"
merged_data$activities[ merged_data$activities== 2 ]<- "Walking Upstairs"
merged_data$activities[ merged_data$activities==3] <- "Walking Downstairs"
merged_data$activities[ merged_data$activities== 4] <- "Sitting"
merged_data$activities[ merged_data$activities== 5] <- "Standing"
merged_data$activities[ merged_data$activities==6] <- "Laying"
# after describing the activity names change the class back to factor
merged_data$activities <- as.factor(merged_data$activities)

##step 4: to clarify the names of the columns, replace the abbreviations with the original words so that its clearer for the user
names(merged_data) <- gsub("Acc", "Accelerator", names(merged_data))
names(merged_data) <- gsub("Mag", "Magnitude", names(merged_data))
names(merged_data) <- gsub("Gyro", "Gyroscope", names(merged_data))
names(merged_data) <- gsub("^t", "time", names(merged_data))
names(merged_data) <- gsub("^f", "frequency", names(merged_data))

## step 5: creates a second, independent tidy data set with the average of each variable for each activity and each subject.
merged_data.dt <- data.table(merged_data)
#This takes the mean of every column broken down by participants and activities
TidyData <- merged_data.dt[, lapply(.SD, mean), by = 'participants,activities']
## Finally ordering the data so that the participants numbers are ordered ascendingly
tidy_data<- TidyData[order(TidyData$participants),]

write.table(tidy_data, file = "Tidy.txt", row.names = FALSE)
