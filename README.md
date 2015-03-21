# Coursera Data Science - Getting and Cleaning Data Course Project
The included run_analysis.R script processes the "Human Activity Recognition Using Smartphones" dataset, combining its multiple files into a single, tidy dataset. The output of the script is a tidy R data frame.

The original dataset contains separate "Test" and "Training" sets, which I have combined into a single larger dataset. While the original data contains a large quantity of statistics for each reading, my dataset includes only the Mean and Standard Deviation for each reading. The table below shows the fields included in the final dataset, indicating the name of the field in the original set when present:

|Field Name                                                         | Original Field Name
|------------------------------------------------------------------ | ---------------------------
|Activity                                                           | N/A
|Subject                                                            | N/A
|Body Acceleration Time Mean - X Direction                          | tBodyAcc-mean()-X
|Body Acceleration Time Mean - Y Direction                          | tBodyAcc-mean()-Y
|Body Acceleration Time Mean - Z Direction                          | tBodyAcc-mean()-Z
|Body Acceleration Time Standard Deviation - X Direction            | tBodyAcc-std()-X
|Body Acceleration Time Standard Deviation - Y Direction            | tBodyAcc-std()-Y
|Body Acceleration Time Standard Deviation - Z Direction            | tBodyAcc-std()-Z
|Gravity Acceleration Time Mean - X Direction                       | tGravityAcc-mean()-X
|Gravity Acceleration Time Mean - Y Direction                       | tGravityAcc-mean()-Y
|Gravity Acceleration Time Mean - Z Direction                       | tGravityAcc-mean()-Z
|Gravity Acceleration Time Standard Deviation - X Direction         | tGravityAcc-std()-X
|Gravity Acceleration Time Standard Deviation - Y Direction         | tGravityAcc-std()-Y
|Gravity Acceleration Time Standard Deviation - Z Direction         | tGravityAcc-std()-Z
|Body Acceleration Jerk Time Mean - X Direction                     | tBodyAccJerk-mean()-X
|Body Acceleration Jerk Time Mean - Y Direction                     | tBodyAccJerk-mean()-Y
|Body Acceleration Jerk Time Mean - Z Direction                     | tBodyAccJerk-mean()-Z
|Body Acceleration Jerk Time Standard Deviation - X Direction       | tBodyAccJerk-std()-X
|Body Acceleration Jerk Time Standard Deviation - Y Direction       | tBodyAccJerk-std()-Y
|Body Acceleration Jerk Time Standard Deviation - Z Direction       | tBodyAccJerk-std()-Z
|Body Gyroscope Time Mean - X Direction                             | tBodyGyro-mean()-X
|Body Gyroscope Time Mean - Y Direction                             | tBodyGyro-mean()-Y
|Body Gyroscope Time Mean - Z Direction                             | tBodyGyro-mean()-Z
|Body Gyroscope Time Standard Deviation - X Direction               | tBodyGyro-std()-X
|Body Gyroscope Time Standard Deviation - Y Direction               | tBodyGyro-std()-Y
|Body Gyroscope Time Standard Deviation - Z Direction               | tBodyGyro-std()-Z
|Body Gyroscope Jerk Time Mean - X Direction                        | tBodyGyroJerk-mean()-X
|Body Gyroscope Jerk Time Mean - Y Direction                        | tBodyGyroJerk-mean()-Y
|Body Gyroscope Jerk Time Mean - Z Direction                        | tBodyGyroJerk-mean()-Z
|Body Gyroscope Jerk Time Standard Deviation - X Direction          | tBodyGyroJerk-std()-X
|Body Gyroscope Jerk Time Standard Deviation - Y Direction          | tBodyGyroJerk-std()-Y
|Body Gyroscope Jerk Time Standard Deviation - Z Direction          | tBodyGyroJerk-std()-Z
|Body Acceleration Magnitude Time Mean                              | tBodyAccMag-mean()
|Body Acceleration Magnitude Time Standard Deviation                | tBodyAccMag-std()
|Gravity Acceleration Magnitude Time Mean                           | tGravityAccMag-mean()
|Gravity Acceleration Magnitude Time Standard Deviation             | tGravityAccMag-std()
|Body Acceleration Jerk Magnitude Time Mean                         | tBodyAccJerkMag-mean()
|Body Acceleration Jerk Magnitude Time Standard Deviation           | tBodyAccJerkMag-std()
|Body Gyroscope Magnitude Time Mean                                 | tBodyGyroMag-mean()
|Body Gyroscope Magnitude Time Standard Deviation                   | tBodyGyroMag-std()
|Body Gyroscope Jerk Magnitude Time Mean                            | tBodyGyroJerkMag-mean()
|Body Gyroscope Jerk Magnitude Time Standard Deviation              | tBodyGyroJerkMag-std()
|Body Acceleration Frequency Mean - X Direction                     | fBodyAcc-mean()-X
|Body Acceleration Frequency Mean - Y Direction                     | fBodyAcc-mean()-Y
|Body Acceleration Frequency Mean - Z Direction                     | fBodyAcc-mean()-Z
|Body Acceleration Frequency Standard Deviation - X Direction       | fBodyAcc-std()-X
|Body Acceleration Frequency Standard Deviation - Y Direction       | fBodyAcc-std()-Y
|Body Acceleration Frequency Standard Deviation - Z Direction       | fBodyAcc-std()-Z
|Body Acceleration Jerk Frequency Mean - X Direction                | fBodyAccJerk-mean()-X
|Body Acceleration Jerk Frequency Mean - Y Direction                | fBodyAccJerk-mean()-Y
|Body Acceleration Jerk Frequency Mean - Z Direction                | fBodyAccJerk-mean()-Z
|Body Acceleration Jerk Frequency Standard Deviation - X Direction  | fBodyAccJerk-std()-X
|Body Acceleration Jerk Frequency Standard Deviation - Y Direction  | fBodyAccJerk-std()-Y
|Body Acceleration Jerk Frequency Standard Deviation - Z Direction  | fBodyAccJerk-std()-Z
|Body Gyroscope Frequency Mean - X Direction                        | fBodyGyro-mean()-X
|Body Gyroscope Frequency Mean - Y Direction                        | fBodyGyro-mean()-Y
|Body Gyroscope Frequency Mean - Z Direction                        | fBodyGyro-mean()-Z
|Body Gyroscope Frequency Standard Deviation - X Direction          | fBodyGyro-std()-X
|Body Gyroscope Frequency Standard Deviation - Y Direction          | fBodyGyro-std()-Y
|Body Gyroscope Frequency Standard Deviation - Z Direction          | fBodyGyro-std()-Z
|Body Acceleration Magnitude Frequency Mean                         | fBodyAccMag-mean()
|Body Acceleration Magnitude Frequency Standard Deviation           | fBodyAccMag-std()
|BodyBody Acceleration Jerk Magnitude Frequency Mean                | fBodyBodyAccJerkMag-mean()
|BodyBody Acceleration Jerk Magnitude Frequency Standard Deviation  | fBodyBodyAccJerkMag-std()
|BodyBody Gyroscope Magnitude Frequency Mean                        | fBodyBodyGyroMag-mean()
|BodyBody Gyroscope Magnitude Frequency Standard Deviation          | fBodyBodyGyroMag-std()
|BodyBody Gyroscope Jerk Magnitude Frequency Mean                   | fBodyBodyGyroJerkMag-mean()
|BodyBody Gyroscope Jerk Magnitude Frequency Standard Deviation     | fBodyBodyGyroJerkMag-std()