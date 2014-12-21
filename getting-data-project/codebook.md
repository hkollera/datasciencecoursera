## DATA DICTIONARY -- Getting Data Project

### Raw data:
Data from different files of the _UCI HAR Dataset_

The dataset includes the following files:
* 'README.txt' Information about the study and the dataset
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels (activity ids)
* 'train/subject_train.txt': Ids of the subject who performed the activity for each window sample. Its range is from 1 to 30.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels (activity ids)
* 'train/subject_train.txt': Ids of the subject, same as above.

### Processed data:
Activity		Type of logged activity
				* WALKING
				* WALKING_UPSTAIRS
				* WALKING_DOWNSTAIRS
				* SITTING
				* STANDING
				* LAYING

Subject			ID of volunteer in study
				ranges from 1 to 30

Means of the measures of the same name:
tBodyAcc-mean()-X 
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z
tBodyAcc-std()-X           
tBodyAcc-std()-Y
tBodyAcc-std()-Z           
tGravityAcc-mean()-X
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z
tGravityAcc-std()-X       
tGravityAcc-std()-Y
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z
tBodyGyro-std()-X         
tBodyGyro-std()-Y
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()
tBodyAccMag-std()          
tGravityAccMag-mean()
tGravityAccMag-std()       
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z
fBodyAcc-std()-X           
fBodyAcc-std()-Y
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X
fBodyGyro-mean()-Y        
fBodyGyro-mean()-Z
fBodyGyro-std()-X          
fBodyGyro-std()-Y
fBodyGyro-std()-Z          
fBodyAccMag-mean()
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()    
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()