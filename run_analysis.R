##Step 1 Merge the train and test to create one data set (download the files from the url ,set the directory, and read the data
##setwd("~/Desktop/Coursera/")
trainData <- read.table("./Getting_Cleaning/Dataset/train/X_train.txt")
dim(trainData) ##  7352  561
head(trainData)
trainLabel <- read.table("./Getting_Cleaning/Dataset/train/y_train.txt")
table(trainLabel)
trainSubject <- read.table("./Getting_Cleaning/Dataset/train/subject_train.txt")
testData <- read.table("./Getting_Cleaning/Dataset/test/X_test.txt")
dim(testData) # 2947 561
testLabel <- read.table("./Getting_Cleaning/Dataset/test/y_test.txt") 
table(testLabel) 
testSubject <- read.table("./Getting_Cleaning/Dataset/test/subject_test.txt")
joinData <- rbind(trainData, testData)
dim(joinData) # 10299   561
joinLabel <- rbind(trainLabel, testLabel)
dim(joinLabel) # 10299   1
joinSubject <- rbind(trainSubject, testSubject)
dim(joinSubject) # 10299  1

## Step 2 : 2.Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("./Getting_Cleaning/Dataset/features.txt")
dim(features)  # 561  2 ,names "V1"  "V2"
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
length(meanStdIndices) # 66
joinData <- joinData[, meanStdIndices]
dim(joinData) # 10299  66
names(joinData) <- gsub("\\(\\)", "", features[meanStdIndices, 2]) # remove "()"
names(joinData) <- gsub("mean", "Mean", names(joinData)) # capitalize M
names(joinData) <- gsub("std", "Std", names(joinData)) # capitalize S
names(joinData) <- gsub("-", "", names(joinData)) # remove "-" in column names 

## Step 3: 3.Uses descriptive activity names to name the activities in the data set
activity <- read.table("./Getting_Cleaning/Dataset/activity_labels.txt")
activity[,2] <- tolower(gsub("_","",activity[,2])) # to remove "_" and change to lower case
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8)) # replace u - U
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8)) # replce  d - D
activityLabel <- activity[joinLabel[, 1], 2]
joinLabel[, 1] <- activityLabel
names(joinLabel) <- "activity"

# Step 4 : 4.Appropriately labels the data set with descriptive variable names.
names(joinSubject) <- "subject"
cleanedData <- cbind(joinSubject, joinLabel, joinData)
dim(cleanedData) # 10299  68
write.table(cleanedData, "./Getting_Cleaning/Dataset/merged_data.txt") # write out the 1st dataset


# Step 5 : Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
subjectLen <- length(table(joinSubject)) # 30
activityLen <- dim(activity)[1] # 6
columnLen <- dim(cleanedData)[2]
result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(cleanedData)
row <- 1
for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    result[row, 1] <- sort(unique(joinSubject)[, 1])[i]
    result[row, 2] <- activity[j, 2]
    bool1 <- i == cleanedData$subject
    bool2 <- activity[j, 2] == cleanedData$activity
    result[row, 3:columnLen] <- colMeans(cleanedData[bool1&bool2, 3:columnLen])
    row <- row + 1
  }
}
head(result)
write.table(result, "data_with_means.txt") # write out the 2nd dataset

# data <- read.table("./data_with_means.txt")
# data[1:12, 1:3]
