# Getting and Cleaning Data Project

# read in the data
#   read features.txt first to get the 561 feature names
#   read in each train and test set and then rbind them to combine them
#   cbind the 3 rbind'd sets to create one big data.frame of all the data
#     column 1 is subject
#     column 2 is activity
#     columns 3-563 are the 561 features

Features <- read.table("features.txt", header = FALSE)
FeatureTitles <- Features[,2]
X_Train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = FeatureTitles)
X_Test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = FeatureTitles)
All_X <- rbind(X_Train, X_Test)
Y_Train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE, col.names = "Activity")
Y_Test <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, col.names = "Activity")
All_Y <- rbind(Y_Train, Y_Test)
Subj_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "Subject")
Subj_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "Subject")
All_Subj <- rbind(Subj_Train, Subj_Test)
All_Data <- cbind(All_Subj, All_Y, All_X) 

# change the activity labels from numbers to descriptive words

All_Data$Activity[All_Data$Activity == 1] = "WALKING"
All_Data$Activity[All_Data$Activity == 2] = "WALKING_UPSTAIRS"
All_Data$Activity[All_Data$Activity == 3] = "WALKING_DOWNSTAIRS"
All_Data$Activity[All_Data$Activity == 4] = "SITTING"
All_Data$Activity[All_Data$Activity == 5] = "STANDING"
All_Data$Activity[All_Data$Activity == 6] = "LAYING"

# extract only the measurements on the mean and standard deviation for each measurement

JustSAMS <- grep("Subject|Activity|mean|std", colnames(All_Data))
JustSAMS_Data <- All_Data[,JustSAMS]

WOMF <- grep("meanFreq", colnames(JustSAMS_Data))
JustMeanStd <- JustSAMS_Data[,-WOMF]

# Create the tidy data set with the average of each variable for each activity and each subject

library(dplyr)
SA_Grps <- group_by(JustMeanStd, Subject, Activity)
Tidy_AVG <- summarise_each(SA_Grps,funs(mean))

# write out the resulting tidy data set

write.table(Tidy_AVG, file = "Tidy_Averages.txt", row.names=FALSE)

