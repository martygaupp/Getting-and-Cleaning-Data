## Code book describing each variable and its values in the tidy set 

The tidy set contains 68 variables.  The first variable represents the ID of the subject.  The second represents the activity involved in that row's data; the possible values are walking, walking upstairs, walking downstairs, sitting, standing, and laying.  The remaining 66 variables represent the mean and standard deviation (std) of the raw data in the x, y, and z directions as well as an overall mean and standard deviation of the Euclidean magnitude for the resulting three-dimensional vector of the various features, as listed below:
<UL>
<LI>BodyAcc</LI>
<LI>GravityAcc</LI>
<LI>BodyAccJerk</LI>
<LI>BodyGyro</LI>
<LI>BodyGyroJerk</LI>
</UL>
Every entry in the table for the last 66 variables/columns are averages (arithmetic means) of the raw data for each subject-activity combination.  With 30 subjects performing 6 activities each, the entire table contains 180 rows (records) of data.  The units of these 66 feature means are standard gravity units 'g' for all the Acc (for acceleration) columns and radians/second for all the Gyro (for gyroscope) columns.
