# by rdirdi
#
# Getting and Cleaning Data
# Course Project
#
#

# Preparations ######################################

getwd() # this is the folder the ZIP will be downladed into

ZIP <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(ZIP, destfile="HARdset.zip", method="curl")

HAR_files <- unzip("HARdset.zip", list=TRUE) #will be used for filenames and paths
unzip("HARdset.zip", overwrite=TRUE)

HAR_files[,1] # The rows indicate that the test & training datasets in the ZIP
#               follow the same order, thus their files can be easily referred 
#               to by the row indexes of a split HAR_files

HAR_test_files <- HAR_files[5:18,1]
HAR_training_files <- HAR_files[19:32,1]

#########not needed at the moment##########
#HAR_test_files
#HAR_training_files

# The would be files, if necessary, after merging the above
#pattern<-"test"
#replacement<-"merged"
#HAR_merged_files <- mapply(gsub, pattern, replacement, HAR_test_files, USE.NAMES=FALSE)
#pattern<-"Dataset"
#replacement<-"mrgdDset"
#HAR_merged_files <- mapply(gsub, pattern, replacement, HAR_merged_files, USE.NAMES=FALSE)
#HAR_merged_files
###########################################

features <- HAR_files[2,1]
feature_names <- read.table(features)
feature_names <- as.vector(feature_names[,2])

# look for means and stds in the feature_names
mean_names <- grepl("mean", feature_names, ignore.case=TRUE)
std_names <- grepl("std", feature_names, ignore.case=TRUE)
extract <- mean_names | std_names
columns_to_extract <- which(extract)
cnames <- feature_names[columns_to_extract]
cnames <- mapply(make.names, cnames) #names for X columns to be extracted

activities <- read.table(HAR_files[1,1], header=FALSE)
colnames(activities) <- c("actID", "activity")

#####################################################

# Create new TEST data set ##########################

ext_X_test <- read.table(HAR_test_files[13], header=FALSE)
ext_X_test <- ext_X_test[, columns_to_extract]

subject_test <- read.table(HAR_test_files[12], header=FALSE)
y_test <- read.table(HAR_test_files[14], header=FALSE)

# give names to the columns
colnames(ext_X_test) <- cnames
colnames(y_test) <- "actID" # y activities are determined by the rows in X
colnames(subject_test) <- "subject"

# concatenate columns of subject_test, y_test, ext_X_test
test_ds <- cbind(subject_test, y_test, ext_X_test)

# merge the dataset with the activities
TEST_ds <- merge(activities, test_ds)

#####################################################

# Create new TRAINING data set ######################

ext_X_training <- read.table(HAR_training_files[13], header=FALSE)
ext_X_training <- ext_X_training[, columns_to_extract]

subject_training <- read.table(HAR_training_files[12], header=FALSE)
y_training <- read.table(HAR_training_files[14], header=FALSE)

# give names to the columns
colnames(ext_X_training) <- cnames
colnames(y_training) <- "actID" # y activities are determined by the rows in X
colnames(subject_training) <- "subject"

# concatenate columns of subject_training, y_training, ext_X_training
training_ds <- cbind(subject_training, y_training, ext_X_training)

# merge the dataset with the activities
TRAINING_ds <- merge(activities, training_ds)

#####################################################

# Merge the TRAINING and TEST data sets #############

MERGED_ds <-rbind(TEST_ds, TRAINING_ds)
write.csv(MERGED_ds, "HAR merged ds.txt")
write.csv(colnames(MERGED_ds), "HAR merged labels.txt")

#.........save no line numbers into the dataset!!!!!!!!!!!!
#####################################################

#.........are the cnames unique? the originals reproduceable?