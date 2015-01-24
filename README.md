# Getting-and-Cleaning-Data

This is my submission for the course project for this Coursera Course

## Recall the four things you should have to create a tidy data set
1.  The raw data
2.  A tidy data set
3.  A code book describing each variable and its values in the tidy data set
4.  An explicit and exact recipe you used to go from 1 -> 2,3

## The raw data

The raw data for this project consisted of numerous data sets, but roughly was broken into:
<UL>
<LI> a training and test group (for the raw data) for the 561 features measured in the wearable computing experiment</LI>
<LI> a set of text files for labeling the features, activities, and subjects</LI>
<LI> numerous supplemental files that provide detailed data from the wearable computing experiment</LI>
</UL>

## A tidy data set

The final tidy data set is quite large - 180 observations of 68 variables.  It adheres to all the criteria of a tidy data set:

1.  Each variable you measure should be in one column
<UL>
<LI> the first column is the subject's ID</LI>
<LI> the second column is the activity identifier</LI>
<LI> columns 3 through 68 represent the means and standard deviations of the various features</LI>
</UL>
2.  Each different observation of that variable should be in a different row - each row represents a separate subject-activity combination
3.  There should be one table for each "kind" of variable - the table contains averages for each subject-activity's feature
4.  If you have multiple tables, they should include a column in the table that allows them to be linked - N/A for this project

## The code book describing each variable and its values in the tidy set 

The tidy set contains 68 variables, 66 that represent the mean and standard deviation (std) of the raw data in the x, y, and z directions as well as an overall mean and standard deviation for the Euclidean magnitude of the resulting three-dimensional vector of the various features, as listed below:
<UL>
<LI>tBodyAcc</LI>
<LI>tGravityAcc</LI>
<LI>tBodyAccJerk</LI>
<LI>tBodyGyro</LI>
<LI>tBodyGyroJerk</LI>
</UL>


## How the Script Works:

1.  Read in the data <BR>
<UL>
<LI>read features.txt first to get the 561 feature names</LI>
<LI>read in each train and test set and then rbind them to combine them</LI>
<LI>cbind the 3 rbind'd sets to create one big data.frame of all the data</LI>
<UL>
<LI>column 1 is subject</LI>
<LI>column 2 is activity</LI>
<LI>columns 3-563 are the 561 features</LI>
</UL>
</UL>
2.  Change the activity labels from numbers to descriptive words
3.  Extract only the measurements on the mean and standard deviation for each measurement
4.  Create the tidy data set with the average of each variable for each activity and each subject

## Code Book


## Sample Output of Tidy Data Set (just a small snippet)
