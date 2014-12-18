#CODE BOOK

The goal for this project is to prepare tidy data that can be used for later
analysis.

##Data Set Information

The data used was collected from the accelerometers from the Samsung Galaxy S Smartphone.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiments have been carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


##Variables Description

#####For each record in the dataset it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


The dataset includes two folders one for test data and the other for train data.

#####Data files used:
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


##Data Transformation
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
      + Load both data sets (test and train)
      + Load activity labels, features 
      + Extract only valid colums to be used (mean and std)
2. Uses descriptive activity names to name the activities in the data set.
      + Set column names based on features and activity labels.
3. Appropriately labels the data set with descriptive variable names. 
4. Merges the training and the test sets to create one data set.
5. Creates independent tidy data set with the average of each variable for each activity and each subject.



