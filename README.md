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

## A code book describing each variable and its values in the tidy set 

The tidy set contains 68 variables.  The first variable represents the ID of the subject.  The second represents the activity involved in that row's data; the possible values are walking, walking upstairs, walking downstairs, sitting, standing, and laying.  The remaining 66 variables represent the mean and standard deviation (std) of the raw data in the x, y, and z directions as well as an overall mean and standard deviation of the Euclidean magnitude for the resulting three-dimensional vector of the various features, as listed below:
<UL>
<LI>tBodyAcc</LI>
<LI>tGravityAcc</LI>
<LI>tBodyAccJerk</LI>
<LI>tBodyGyro</LI>
<LI>tBodyGyroJerk</LI>
</UL>
Every entry in the table for the last 66 variables/columns are averages (arithmetic means) of the raw data for each subject-activity combination.  With 30 subjects performing 6 activities each, the entire table contains 180 rows (records) of data.  The units of these 66 feature means are standard gravity units 'g' for all the Acc (for acceleration) columns and radians/second for all the Gyro (for gyroscope) columns.

## An explicit and exact recipe you used to go from 1 -> 2,3 - how the Script Works:

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

## Sample Output of Tidy Data Set (just a small snippet)

<pre>
Subject	  Activity            tBodyAcc.mean...X   tBodyAcc.mean...Y   tBodyAcc.mean...Z
1         LAYING              0.221598244         -0.040513953        -0.113203554
1         SITTING             0.261237565         -0.001308288        -0.104544182
1         STANDING            0.278917629         -0.01613759         -0.110601818
1         WALKING             0.277330759         -0.017383819        -0.111148104
1         WALKING_DOWNSTAIRS  0.28918832          -0.009918505        -0.107566191
1         WALKING_UPSTAIRS    0.25546169          -0.023953149        -0.097302002
2         LAYINY              0.281373404         -0.01815874         -0.10724561
2         SITTING             0.277087352         -0.015687994        -0.109218272
2         STANDING            0.277911472         -0.018420827        -0.105908536
2         WALKING             0.276426586         -0.01859492         -0.105500358
2         WALKING_DOWNSTAIRS  0.277615348         -0.022661416        -0.116812942
2         WALKING_UPSTAIRS    0.24716479          -0.021412113        -0.1525139
3         LAYING              0.275516853         -0.018955679        -0.101300478
</pre>

