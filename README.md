==================================================================
 #                  Getting and Cleaning Data
 ##                    Course Project Dataset
==================================================================

                           based on: 

..................................................................
Human Activity Recognition Using Smartphones Dataset
Version 1.0
..................................................................
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
..................................................................

#Assignment instructions

The purpose of this project is to demonstrate your ability to collect, work
with, and clean a data set. The goal is to prepare tidy data that can be used
for later analysis. You will be graded by your peers on a series of yes/no
questions related to the project. You will be required to submit: 1) a tidy
data set as described below, 2) a link to a Github repository with your script
for performing the analysis, and 3) a code book that describes the variables,
the data, and any transformations or work that you performed to clean up the
data called CodeBook.md. You should also include a README.md in the repo with
your scripts. This repo explains how all of the scripts work and how they are
connected.

...

You should create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each
measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable
for each activity and each subject."

#Course Project

##Getting the data

The script run_analysis.R downloads the UCI HAR Dataset from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This step as well as the automatic unzip can be skipped if the unzipped dataset
has already been there in R's working directory. The script however uses the
sequence of the files in the ZIP for indexing purposes to read corresponding
files of training and test data into R, the ZIP therefore should be accessible
in the working directory.

##Decision on what columns of X to extract

Although extracting the necessary measurement means and standard deviations
is the 2nd step among the tasks according to the assignment instructions, it
is suggested that we get rid of the unused columns right at the beginning since
R objects are stored in the memory during the data processing, so the smaller
the data frames the better.

The three groups of variables summarized in features_info.txt of the original
dataset are as follows:
* signals
* set of variables that were estimated from these signals
* additional vectors obtained by averaging the signals in a window sample

As the means among the latter two types of variables have been calculated by
using different averaging algorithms, excluding the signal variables they are
based on will eliminate any redundancy between these derived variables types.
That is extracting the means and stds from both of them will not affect the
tidiness of our resulting dataset. Out of 561 86 columns will be extracted.

##Substitution of the invalid characters in the variable names

Tidy datasets require human readable and understandable column headers like
those in features.txt. In order to use them in R, however, brackets and
hyphens have to be removed or replaced. In order to do this I used function
make.names() that resulted in unique variable names despite all of the dots it
created. The function produces a vector of R-compatible headers while the
original labels are also being kept as column names of this vector. Applying
the function to the headers of the 86 X columns to be extracted fulfils the 4th
requirement of the assignment instructions

##Creating new TEST and TRAINING datasets

For both the TEST and TRAINING datasets the following data frames are combined:
* subject the dimension of which is 2947 x 1
* y the dimension of which is 2947 x 1
* extracted 86 columns of X containing of 2947 rows

TEST and TRAINING datasets then are merged with the activities by y as vector
of activity IDs.

Since the datasets now have their descriptive activity names as prescribed by
the 3rd assignment instruction, the actID column coming from y can be dropped.

##Merging TEST and TRAINING data

This step was required by the 1st assignment instruction and is now met using
the rbind() function. The resulting MERGED dataset is saved under the name of
"HAR merged ds.txt" in the working directory. It also can be found in the
https://github.com/rdirdi/GetCleanData GitHub repository

##The tidy dataset

From MERGED_ds having variables forming a column each, observations forming a
row each and having no missing values an independent dataset has been created
by averaging each variable for each activity and each subject. To produce the
6 activities x 30 subjects = 180 rows in 88 columns as required by the 5th
assignment instruction the melt() and dcast() functions were used.

The resulting tidy MERGED dataset is saved in R's working directory under the
name of "HAR merged tidy ds.txt", uploaded to Coursera with a link to the
https://github.com/rdirdi/GetCleanData GitHub repository and pushed to the
GitHub repository as well.

The CodeBook.md also in the GitHub repository describes the variables, the data
and the transformations and work performed to clean up the data.
