This exercise is based on a study about *Human Activity Recognition Using Smartphones*. 
The dataset source is to be found at (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
A full description of this study is to be found at (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Aim of the exercise is to subset the original data by a given set of measures an d to compute the mean value of these measures grouped by subject and activity.

The function *run_analysis* changes to the data directory, which must be locatedin the same directory as the R source file, and reads the file with the features. From the featurelist it builds a new list of the desired subset of features, consisting of all the features describing a mean or standard deviation. 

Next the function reads in the measures from the training and the testing dataset located in separate subdirectories. The measures are combined with the subject ids and the activities, which are listed in separate files. With the new featurelist the function builds a subset of the measures joining the two datasets together.

This dataset is the basis for computing the means of the measures grouped by  subject and activity. 

Returnvalue of the function is the computed dataset.