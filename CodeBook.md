==================================================================
#Code Book
##HAR_merged_tidy_ds.txt
==================================================================

#Source of the data

The dataset can be seen as a kind of summary of data extracted from the
"Human Activity Recognition Using Smartphones Data Set [1]."

The original dataset can be accessed from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Beyond the README.txt and feature_info.txt in the ZIP file further dataset and
attribute information can be found on the following web page:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

As the summary dataset "HAR_merged_tidy_ds.txt" 
* contains no variables other than the original dataset,
* does not change units of the data,

the aim of this Code Book regarding the variables and their values is highlighting the
differences (if any) only.

#Variables used

The dataset combines variables from the following subsets of the original:

* "V1" from activity_labels.txt, renamed to "activity"
* "V1" from subject_test.txt / subject_training.txt, renamed to "subject"
* measurement variables from X_test.txt / X_training.txt renamed (because of some
invalid for R characters in them) as follows:

original names -->
*        new names as column heads for this dataset

tBodyAcc-mean()-X
*        tBodyAcc.mean...X
        
tBodyAcc-mean()-Y
*        tBodyAcc.mean...Y
        
tBodyAcc-mean()-Z
*        tBodyAcc.mean...Z
        
tBodyAcc-std()-X
*        tBodyAcc.std...X
        
tBodyAcc-std()-Y
*        tBodyAcc.std...Y
        
tBodyAcc-std()-Z
*        tBodyAcc.std...Z

tGravityAcc-mean()-X
*        tGravityAcc.mean...X
        
tGravityAcc-mean()-Y
*        tGravityAcc.mean...Y
        
tGravityAcc-mean()-Z
*        tGravityAcc.mean...Z
        
tGravityAcc-std()-X
*        tGravityAcc.std...X
        
tGravityAcc-std()-Y
*        tGravityAcc.std...Y
        
tGravityAcc-std()-Z
*        tGravityAcc.std...Z
        
tBodyAccJerk-mean()-X
*        tBodyAccJerk.mean...X
        
tBodyAccJerk-mean()-Y
*        tBodyAccJerk.mean...Y
        
tBodyAccJerk-mean()-Z
*        tBodyAccJerk.mean...Z
        
tBodyAccJerk-std()-X
*        tBodyAccJerk.std...X
        
tBodyAccJerk-std()-Y
*        tBodyAccJerk.std...Y
        
tBodyAccJerk-std()-Z
*        tBodyAccJerk.std...Z
        
tBodyGyro-mean()-X
*        tBodyGyro.mean...X
        
tBodyGyro-mean()-Y
*        tBodyGyro.mean...Y
        
tBodyGyro-mean()-Z
*        tBodyGyro.mean...Z
        
tBodyGyro-std()-X
*        tBodyGyro.std...X
        
tBodyGyro-std()-Y
*        tBodyGyro.std...Y
        
tBodyGyro-std()-Z
*        tBodyGyro.std...Z
        
tBodyGyroJerk-mean()-X
*        tBodyGyroJerk.mean...X
        
tBodyGyroJerk-mean()-Y
*        tBodyGyroJerk.mean...Y
        
tBodyGyroJerk-mean()-Z
*        tBodyGyroJerk.mean...Z
        
tBodyGyroJerk-std()-X
*        tBodyGyroJerk.std...X
        
tBodyGyroJerk-std()-Y
*        tBodyGyroJerk.std...Y
        
tBodyGyroJerk-std()-Z
*        tBodyGyroJerk.std...Z
        
tBodyAccMag-mean()
*        tBodyAccMag.mean..
        
tBodyAccMag-std()
*        tBodyAccMag.std..
        
tGravityAccMag-mean()
*        tGravityAccMag.mean..
        
tGravityAccMag-std()
*        tGravityAccMag.std..
        
tBodyAccJerkMag-mean()
*        tBodyAccJerkMag.mean..
        
tBodyAccJerkMag-std()
*        tBodyAccJerkMag.std..
        
tBodyGyroMag-mean()
*        tBodyGyroMag.mean..

tBodyGyroMag-std()
*        tBodyGyroMag.std..

tBodyGyroJerkMag-mean()
*        tBodyGyroJerkMag.mean..
        
tBodyGyroJerkMag-std()
*        tBodyGyroJerkMag.std..

fBodyAcc-mean()-X
*        fBodyAcc.mean...X

fBodyAcc-mean()-Y
*        fBodyAcc.mean...Y
        
fBodyAcc-mean()-Z
*        fBodyAcc.mean...Z

fBodyAcc-std()-X
*        fBodyAcc.std...X
        
fBodyAcc-std()-Y
*        fBodyAcc.std...Y

fBodyAcc-std()-Z
*        fBodyAcc.std...Z

fBodyAcc-meanFreq()-X
*        fBodyAcc.meanFreq...X

fBodyAcc-meanFreq()-Y
*        fBodyAcc.meanFreq...Y

fBodyAcc-meanFreq()-Z
*        fBodyAcc.meanFreq...Z

fBodyAccJerk-mean()-X
*        fBodyAccJerk.mean...X

fBodyAccJerk-mean()-Y
*        fBodyAccJerk.mean...Y

fBodyAccJerk-mean()-Z
*        fBodyAccJerk.mean...Z

fBodyAccJerk-std()-X
*        fBodyAccJerk.std...X

fBodyAccJerk-std()-Y
*        fBodyAccJerk.std...Y

fBodyAccJerk-std()-Z
*        fBodyAccJerk.std...Z

fBodyAccJerk-meanFreq()-X
*        fBodyAccJerk.meanFreq...X

fBodyAccJerk-meanFreq()-Y
*        fBodyAccJerk.meanFreq...Y

fBodyAccJerk-meanFreq()-Z
*        fBodyAccJerk.meanFreq...Z

fBodyGyro-mean()-X
*        fBodyGyro.mean...X

fBodyGyro-mean()-Y
*        fBodyGyro.mean...Y

fBodyGyro-mean()-Z
*        fBodyGyro.mean...Z

fBodyGyro-std()-X
*        fBodyGyro.std...X

fBodyGyro-std()-Y
*        fBodyGyro.std...Y

fBodyGyro-std()-Z
*        fBodyGyro.std...Z

fBodyGyro-meanFreq()-X
*        fBodyGyro.meanFreq...X

fBodyGyro-meanFreq()-Y
*        fBodyGyro.meanFreq...Y

fBodyGyro-meanFreq()-Z
*        fBodyGyro.meanFreq...Z

fBodyAccMag-mean()
*        fBodyAccMag.mean..

fBodyAccMag-std()
*        fBodyAccMag.std..

fBodyAccMag-meanFreq()
*        fBodyAccMag.meanFreq..

fBodyBodyAccJerkMag-mean()
*        fBodyBodyAccJerkMag.mean..

fBodyBodyAccJerkMag-std()
*        fBodyBodyAccJerkMag.std..

fBodyBodyAccJerkMag-meanFreq()
*        fBodyBodyAccJerkMag.meanFreq..

fBodyBodyGyroMag-mean()
*        fBodyBodyGyroMag.mean..

fBodyBodyGyroMag-std()
*        fBodyBodyGyroMag.std..

fBodyBodyGyroMag-meanFreq()
*        fBodyBodyGyroMag.meanFreq..

fBodyBodyGyroJerkMag-mean()
*        fBodyBodyGyroJerkMag.mean..

fBodyBodyGyroJerkMag-std()
*        fBodyBodyGyroJerkMag.std..

fBodyBodyGyroJerkMag-meanFreq()
*        fBodyBodyGyroJerkMag.meanFreq..

angle(tBodyAccMean,gravity)
*        angle.tBodyAccMean.gravity.

angle(tBodyAccJerkMean),gravityMean)
*        angle.tBodyAccJerkMean..gravityMean.

angle(tBodyGyroMean,gravityMean)
*        angle.tBodyGyroMean.gravityMean.

angle(tBodyGyroJerkMean,gravityMean)
*        angle.tBodyGyroJerkMean.gravityMean.

angle(X,gravityMean)
*        angle.X.gravityMean.

angle(Y,gravityMean)
*        angle.Y.gravityMean.

angle(Z,gravityMean)
*        angle.Z.gravityMean.

By replacing the invalid characters automatically, using make.names() the new names
are unique, too.

#Columns used

* y_test.txt / y_training.txt, their only column just renamed to activity, their numeric 
values changed to the corresponding, descriptive activity values of activity_labels.txt after
merging the two datasets
* subject_test.txt / subject_training.txt the values of which are unchanged
* 86 columns of means and standard deviations extracted from X_test.txt / X_training.txt
with partly modified new column names as described above.

#Values in the dataset
Values are the averages of each measurement variable (86) for
* each activity (6) and
* each subject (30).

#Tidiness



[1] Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
