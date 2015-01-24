## Explicit and exact recipe you used to go from 1 -> 2,3 - how the Script Works:

1.  Read in the separate data files and bind them together into one big data frame<BR>
<UL>
<LI>read features.txt first to get the 561 feature names</LI>
<LI>read in each train and test set and then rbind (row bind) them to combine them</LI>
<UL>
<LI>rbind X_train.txt with X_test.txt</LI>
<LI>rbind Y_train.txt with Y_test.txt</LI>
<LI>rbind subject_train.txt with subject_test.txt</LI>
</UL>
<LI>cbind (column bind) the 3 rbind'd sets to create one big data.frame of all the data</LI>
<UL>
<LI>column 1 is subject</LI>
<LI>column 2 is activity</LI>
<LI>columns 3-563 are the 561 features</LI>
</UL>
</UL>
2.  Change the activity labels from numbers to descriptive words
3.  Extract only the measurements on the mean and standard deviation for each measurement
4.  Create the tidy data set with the average of each variable for each activity and each subject
5.  Write out the resulting tidy data set
