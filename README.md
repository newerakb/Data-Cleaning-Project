# Coursera Data Science - Getting and Cleaning Data Course Project

## Summary
The included run_analysis.R script processes the "Human Activity Recognition Using Smartphones" dataset, combining its multiple files into a single, tidy dataset. The output of the script is a tidy R data frame.

See included "UCI HAR Dataset" directory for full details on the contents and methodology of the study, along with the complete raw dataset.

## Code Book
The original dataset contains separate "Test" and "Training" sets, which I have combined into a single larger dataset. While the original data contains a large quantity of statistics for each reading, my dataset includes only the Mean and Standard Deviation for each reading. The table below shows the fields included in the final dataset, indicating the name of the field in the original set when present:

|Field                                                              | Original Field Name           | Data Type
|------------------------------------------------------------------ | ----------------------------- | ------------------
|Activity                                                           | N/A                           | Factor (6 levels)
|Subject                                                            | N/A                           | Integer
|Body Acceleration Time Mean - X Direction                          | tBodyAcc-mean()-X             | Numeric
|Body Acceleration Time Mean - Y Direction                          | tBodyAcc-mean()-Y             | Numeric
|Body Acceleration Time Mean - Z Direction                          | tBodyAcc-mean()-Z             | Numeric
|Body Acceleration Time Standard Deviation - X Direction            | tBodyAcc-std()-X              | Numeric
|Body Acceleration Time Standard Deviation - Y Direction            | tBodyAcc-std()-Y              | Numeric
|Body Acceleration Time Standard Deviation - Z Direction            | tBodyAcc-std()-Z              | Numeric
|Gravity Acceleration Time Mean - X Direction                       | tGravityAcc-mean()-X          | Numeric
|Gravity Acceleration Time Mean - Y Direction                       | tGravityAcc-mean()-Y          | Numeric
|Gravity Acceleration Time Mean - Z Direction                       | tGravityAcc-mean()-Z          | Numeric
|Gravity Acceleration Time Standard Deviation - X Direction         | tGravityAcc-std()-X           | Numeric
|Gravity Acceleration Time Standard Deviation - Y Direction         | tGravityAcc-std()-Y           | Numeric
|Gravity Acceleration Time Standard Deviation - Z Direction         | tGravityAcc-std()-Z           | Numeric
|Body Acceleration Jerk Time Mean - X Direction                     | tBodyAccJerk-mean()-X         | Numeric
|Body Acceleration Jerk Time Mean - Y Direction                     | tBodyAccJerk-mean()-Y         | Numeric
|Body Acceleration Jerk Time Mean - Z Direction                     | tBodyAccJerk-mean()-Z         | Numeric
|Body Acceleration Jerk Time Standard Deviation - X Direction       | tBodyAccJerk-std()-X          | Numeric
|Body Acceleration Jerk Time Standard Deviation - Y Direction       | tBodyAccJerk-std()-Y          | Numeric
|Body Acceleration Jerk Time Standard Deviation - Z Direction       | tBodyAccJerk-std()-Z          | Numeric
|Body Gyroscope Time Mean - X Direction                             | tBodyGyro-mean()-X            | Numeric
|Body Gyroscope Time Mean - Y Direction                             | tBodyGyro-mean()-Y            | Numeric
|Body Gyroscope Time Mean - Z Direction                             | tBodyGyro-mean()-Z            | Numeric
|Body Gyroscope Time Standard Deviation - X Direction               | tBodyGyro-std()-X             | Numeric
|Body Gyroscope Time Standard Deviation - Y Direction               | tBodyGyro-std()-Y             | Numeric
|Body Gyroscope Time Standard Deviation - Z Direction               | tBodyGyro-std()-Z             | Numeric
|Body Gyroscope Jerk Time Mean - X Direction                        | tBodyGyroJerk-mean()-X        | Numeric
|Body Gyroscope Jerk Time Mean - Y Direction                        | tBodyGyroJerk-mean()-Y        | Numeric
|Body Gyroscope Jerk Time Mean - Z Direction                        | tBodyGyroJerk-mean()-Z        | Numeric
|Body Gyroscope Jerk Time Standard Deviation - X Direction          | tBodyGyroJerk-std()-X         | Numeric
|Body Gyroscope Jerk Time Standard Deviation - Y Direction          | tBodyGyroJerk-std()-Y         | Numeric
|Body Gyroscope Jerk Time Standard Deviation - Z Direction          | tBodyGyroJerk-std()-Z         | Numeric
|Body Acceleration Magnitude Time Mean                              | tBodyAccMag-mean()            | Numeric
|Body Acceleration Magnitude Time Standard Deviation                | tBodyAccMag-std()             | Numeric
|Gravity Acceleration Magnitude Time Mean                           | tGravityAccMag-mean()         | Numeric
|Gravity Acceleration Magnitude Time Standard Deviation             | tGravityAccMag-std()          | Numeric
|Body Acceleration Jerk Magnitude Time Mean                         | tBodyAccJerkMag-mean()        | Numeric
|Body Acceleration Jerk Magnitude Time Standard Deviation           | tBodyAccJerkMag-std()         | Numeric
|Body Gyroscope Magnitude Time Mean                                 | tBodyGyroMag-mean()           | Numeric
|Body Gyroscope Magnitude Time Standard Deviation                   | tBodyGyroMag-std()            | Numeric
|Body Gyroscope Jerk Magnitude Time Mean                            | tBodyGyroJerkMag-mean()       | Numeric
|Body Gyroscope Jerk Magnitude Time Standard Deviation              | tBodyGyroJerkMag-std()        | Numeric
|Body Acceleration Frequency Mean - X Direction                     | fBodyAcc-mean()-X             | Numeric
|Body Acceleration Frequency Mean - Y Direction                     | fBodyAcc-mean()-Y             | Numeric
|Body Acceleration Frequency Mean - Z Direction                     | fBodyAcc-mean()-Z             | Numeric
|Body Acceleration Frequency Standard Deviation - X Direction       | fBodyAcc-std()-X              | Numeric
|Body Acceleration Frequency Standard Deviation - Y Direction       | fBodyAcc-std()-Y              | Numeric
|Body Acceleration Frequency Standard Deviation - Z Direction       | fBodyAcc-std()-Z              | Numeric
|Body Acceleration Jerk Frequency Mean - X Direction                | fBodyAccJerk-mean()-X         | Numeric
|Body Acceleration Jerk Frequency Mean - Y Direction                | fBodyAccJerk-mean()-Y         | Numeric
|Body Acceleration Jerk Frequency Mean - Z Direction                | fBodyAccJerk-mean()-Z         | Numeric
|Body Acceleration Jerk Frequency Standard Deviation - X Direction  | fBodyAccJerk-std()-X          | Numeric
|Body Acceleration Jerk Frequency Standard Deviation - Y Direction  | fBodyAccJerk-std()-Y          | Numeric
|Body Acceleration Jerk Frequency Standard Deviation - Z Direction  | fBodyAccJerk-std()-Z          | Numeric
|Body Gyroscope Frequency Mean - X Direction                        | fBodyGyro-mean()-X            | Numeric
|Body Gyroscope Frequency Mean - Y Direction                        | fBodyGyro-mean()-Y            | Numeric
|Body Gyroscope Frequency Mean - Z Direction                        | fBodyGyro-mean()-Z            | Numeric
|Body Gyroscope Frequency Standard Deviation - X Direction          | fBodyGyro-std()-X             | Numeric
|Body Gyroscope Frequency Standard Deviation - Y Direction          | fBodyGyro-std()-Y             | Numeric
|Body Gyroscope Frequency Standard Deviation - Z Direction          | fBodyGyro-std()-Z             | Numeric
|Body Acceleration Magnitude Frequency Mean                         | fBodyAccMag-mean()            | Numeric
|Body Acceleration Magnitude Frequency Standard Deviation           | fBodyAccMag-std()             | Numeric
|BodyBody Acceleration Jerk Magnitude Frequency Mean                | fBodyBodyAccJerkMag-mean()    | Numeric
|BodyBody Acceleration Jerk Magnitude Frequency Standard Deviation  | fBodyBodyAccJerkMag-std()     | Numeric
|BodyBody Gyroscope Magnitude Frequency Mean                        | fBodyBodyGyroMag-mean()       | Numeric
|BodyBody Gyroscope Magnitude Frequency Standard Deviation          | fBodyBodyGyroMag-std()        | Numeric
|BodyBody Gyroscope Jerk Magnitude Frequency Mean                   | fBodyBodyGyroJerkMag-mean()   | Numeric
|BodyBody Gyroscope Jerk Magnitude Frequency Standard Deviation     | fBodyBodyGyroJerkMag-std()    | Numeric

The process for creating the final, tidy dataset is as follows:
1. Load the Features file (features.txt), which contains the field names for the 561 fields in the raw datasets.
2. Load the Training (X_train.txt) and Test (X_test.txt) files which contain the actual recorded measurements for each feature in the Features file.
3. Combine the Training and Test data into a single dataset. This will be the primary dataset manipulated by the rest of the steps below.
4. Remove all fields from the combined dataset except for those containing a Mean or Standard Deviation measurement.
5. Load the Activity Labels files for Training (y_train.txt) and Test (y_test.txt) datasets, which indicate the Activity represented by each row in the dataset (walking, standing, etc).
6. Combine the two Activity Labels datasets into a single dataset.
7. Add the new combined Activity Labels dataset to the primary dataset last modified in Step 4.
8. Load the Subject files for Training (subject_train.txt) and Test (subject_test.txt) datasets, which indicate the Subject measured by each row in the dataset (30 subjects total).
9. Combine the two Subject datasets into a single dataset.
10. Add the new combined Subject dataset to the primary dataset last modified in Step 7.
11. Replace the numeric representations of each Activity in the primary dataset with descriptive labels stored in activity_labels.txt.
12. Rename each of the measurement columns with a more descriptive name, using the following replacements:
  1. Replace any occurrence of "-mean()" with " Mean".
  2. Replace any occurrence of "-std()" with " Standard Deviation".
  3. Replace any occurrence of "-X" with " - X Direction".
  4. Replace any occurrence of "-Y" with " - Y Direction".
  5. Replace any occurrence of "-Z" with " - Z Direction".
  6. Any fields beginning with "t" have the prefix removed. The word "Time" is then added at the end of the field name, before any Direction indicators (X,Y,Z).
  7. Any fields beginning with "f" have the prefix removed. The word "Frequency" is then added at the end of the field name, before any Direction indicators (X,Y,Z).
  8. Replace any occurrence of "Acc" with " Acceleration ".
  9. Replace any occurrence of "Gyro" with " Gyroscope ".
  10. Replace any occurrence of "Jerk" with " Jerk ".
  11. Replace any occurrence of "Mag" with " Magnitude ".