run_analysis <- function()
{
      #Load activity labels
      activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
      activityLabels <- activityLabels[,2]
      
      #Load features
      features <- read.table("./UCI HAR Dataset/features.txt")
      features <- features[,2]
      
      #Extracts valid features (mean and std to will be used on measurements)
      validFeatures <- grepl ("mean|std", features)
      
      #Load test data (X and Y)
      xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
      yTest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
      
      #Set columns names to X test data
      names(xTest) <- features
      
      #Load and set column name to subject test data
      subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
      names(subjectTest) = "Subject"
      
      #Extracts valid measurements for mean and std on X test data
      xTest <- xTest[,validFeatures]
      
      #Add new column to Y test data - activity name
      yTest[,2] <- activityLabels[yTest[,1]]
      #Set column names to Y test data
      names(yTest) <- c("Activity_Id", "Activity_Name")
      
      #Bind test data
      testData <- cbind(as.data.table(subjectTest),yTest,xTest)
      
      #Load train data (X and Y)
      xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
      yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
      
      #Set columns names to X train data
      names(xTrain) <- features
      
      #Load and set column name to subject train data
      subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
      names(subjectTrain) = "Subject"
      
      #Extracts valid measurements for mean and std on X train data
      xTrain <- xTrain[,validFeatures]
      
      #Add new column to Y train data - activity name
      yTrain[,2] <- activityLabels[yTrain[,1]]
      #Set column names to Y train data
      names(yTrain) <- c("Activity_Id", "Activity_Name")
      
      #Bind train data
      trainData <- cbind(as.data.table(subjectTrain),yTrain,xTrain)
      
      #Merges test and train data to create one data set
      mergeData <- rbind(testData,trainData)
      
      #Set the col names for melting data
      idVars = c("Subject","Activity_Id", "Activity_Name")
      measureVars = setdiff (colnames(mergeData),idVars)
      meltData <- melt (mergeData,id=idVars,measure.vars=measureVars)
      
      #Create tidy data with the average of each variable for each activity
      #and each subject using dcast to get a data frame output
      tidyData <- dcast (meltData, Subject + Activity_Name ~ variable, mean) 
      #write.table(tidyData, file="./tidyData.txt",row.name=FALSE)
      
      
}