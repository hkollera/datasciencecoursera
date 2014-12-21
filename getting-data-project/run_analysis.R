## Getting Data - Course project: Read in and tidy up data
run_analysis <- function() {
  ## load needed libraries
  library("data.table")
  ## defines
  topdatadir    <- "./UCI\ HAR\ Dataset"
  featurefile   <- "features.txt"
  actlabelsfile <- "activity_labels.txt"
  
  ## change to data directory
  if (!file(topdatadir)) {
     stop ("dataset directory not found")
  }
  setwd(topdatadir)

  ## read features.txt
  featureDF <- read.csv(featurefile,sep=" ",header=FALSE)
  featureDT <- as.data.table(featureDF)

  ## subset of items with mean() and std()
  redfeatureDT <- featureDT[(!(V2 %like% "meanFreq") & V2 %like% "mean()") | V2 %like% "std()"]
  ## create list of column numbers and names
  colnumLI <- redfeatureDT[,V1]
  colnameLI <- redfeatureDT[,V2]

  ## read datasets for training and testing
  trainsetDF <- datareader("train", colnumLI, colnameLI)
  testsetDF <- datareader("test", colnumLI, colnameLI)

  ## append datasets
  wholesetDF <- rbind(trainsetDF, testsetDF)

  ## read activity descriptions
  activitydescDF <- read.csv(actlabelsfile,sep="",header=FALSE)
  ## replace activity numbers with descriptions
  activitydescLI <- as.vector(activitydescDF$V2)

  ## loop over activitylist
  for (i in 1:6) {
    ## change activity nr into description
    wholesetDF$activity[wholesetDF$activity == i] <- activitydescLI[i]
  }

  ## create table with mean values over(subject, activity)
  tidySetDF <- aggregate(wholesetDF[,3:68],list(wholesetDF$activity,wholesetDF$subject),mean)
  colnames(tidySetDF)[1] <- "Activity"
  colnames(tidySetDF)[2] <- "Subject"
  ## return the table
  setwd("..")
  return(tidySetDF)
}

datareader <- function(testset,columnList,columnNames) {
  ## change to dir
  setwd(testset)
  ## derived values
  subjectfile  <- paste("subject_", testset, ".txt", sep="")
  activityfile <- paste("y_", testset, ".txt", sep="")
  measurefile  <- paste("X_", testset, ".txt", sep="")

  ## read user file
  subjectDF <- read.csv(subjectfile,sep="",header=FALSE)
  ## read activity file
  activityDF <- read.csv(activityfile,sep="",header=FALSE)
  ## read testset
  measureDF <- read.csv(measurefile,sep="",header=FALSE)
  ## go back to parent dir
  setwd("..")

  ## create dataframe for testset
  colnames(subjectDF) <- c("subject")
  colnames(activityDF) <- c("activity")
  twocolumsDF <- cbind(subjectDF,activityDF)
  ## create subset of measures
  redMeasureDF <- measureDF[columnList]
  ## name columns
  colnames(redMeasureDF) <- columnNames
  ## append column for users, activities and measures
  userActMeasureDF <- cbind(twocolumsDF,redMeasureDF)

  return(userActMeasureDF)
}
