# Need to join train/X_train.txt to test/X_test.txt, using
# associated y_train.txt and y_test.txt files to get code for
# each row (lookup code in activity_labels.txt).
#
# Lookup column description in features.txt (561 columns),
# only keeping the mean ("-mean()") and standard deviation
# ("-std()") columns for each category


# Initialize Required Libraries
library(LaF)
library(ffbase)
library(reshape2)

# Set File Paths
featuresFile <- "UCI HAR Dataset/features.txt"
activityLabelsFile <- "UCI HAR Dataset/activity_labels.txt"

trainFile <- "UCI HAR Dataset/train/X_train.txt"
trainFileLabels <- "UCI HAR Dataset/train/y_train.txt"
trainFileSubjects <- "UCI HAR Dataset/train/subject_train.txt"

testFile  <- "UCI HAR Dataset/test/X_test.txt"
testFileLabels <- "UCI HAR Dataset/test/y_test.txt"
testFileSubjects <- "UCI HAR Dataset/test/subject_test.txt"


# Load Features File
featuresData <- read.table(featuresFile, sep=" ")

# Load Training Data
train.data.laf <- laf_open_fwf(trainFile,
                               column_widths=rep(16,561),
                               column_types=rep('numeric',561))
train.data <- laf_to_ffdf(train.data.laf, nrows=7352)
train.df <- as.data.frame(train.data)
names(train.df) <- featuresData[,2]

# Load Test Data
test.data.laf <- laf_open_fwf(testFile,
                              column_widths=rep(16,561),
                              column_types=rep('numeric',561))
test.data <- laf_to_ffdf(test.data.laf, nrows=2947)
test.df <- as.data.frame(test.data)
names(test.df) <- featuresData[,2]

# Combine Test and Training Data
combined.df <- rbind(train.df, test.df)

# Determine Which Columns to Keep
# (Keeping only mean() and sd() columns)
meanColumns <- grep('-mean\\()', names(combined.df))
sdColumns   <- grep('-std\\()',   names(combined.df))
keepColumns <- sort(c(meanColumns, sdColumns))

combined.df <- combined.df[,keepColumns]

# Load/Combine Labels
test.labels <- read.table(testFileLabels)
train.labels <- read.table(trainFileLabels)
combined.labels <- rbind(train.labels, test.labels)

# Add Labels to Data Frame
combined.df <- cbind(combined.labels, combined.df)
colnames(combined.df)[1] <- "Activity"

# Load/Combine Subject IDs
test.subjects <- read.table(testFileSubjects)
train.subjects <- read.table(trainFileSubjects)
combined.subjects <- rbind(train.subjects, test.subjects)

# Add Subjects to Data Frame
combined.df <- cbind(combined.subjects, combined.df)
colnames(combined.df)[1] <- "Subject"

# Replace Labels with Descriptions
activity.labels <- read.table(activityLabelsFile, sep=" ")
combined.df <- merge(activity.labels, combined.df, by.x="V1", by.y="Activity")
combined.df <- subset(combined.df, select = -c (V1)) #removes label code column
colnames(combined.df)[1] <- "Activity"

# Set New Column Names
names(combined.df) <- gsub("-mean\\()", " Mean", names(combined.df))
names(combined.df) <- gsub("-std\\()", " Standard Deviation", names(combined.df))
names(combined.df) <- gsub("-X", " - X Direction", names(combined.df))
names(combined.df) <- gsub("-Y", " - Y Direction", names(combined.df))
names(combined.df) <- gsub("-Z", " - Z Direction", names(combined.df))
names(combined.df) <- gsub("^t([A-Z][A-Za-z]*) ", "\\1 Time ", names(combined.df))
names(combined.df) <- gsub("^f([A-Z][A-Za-z]*) ", "\\1 Frequency ", names(combined.df))
names(combined.df) <- gsub("([a-z])Acc([A-Z ])", "\\1 Acceleration\\2", names(combined.df))
names(combined.df) <- gsub("([a-z])Gyro([A-Z ])", "\\1 Gyroscope\\2", names(combined.df))
names(combined.df) <- gsub("([a-z])Jerk([A-Z ])", "\\1 Jerk\\2", names(combined.df))
names(combined.df) <- gsub("([a-z])Mag([A-Z ])", "\\1 Magnitude\\2", names(combined.df))

# Create Summarized Data with Means
meanColumns <- names(combined.df[,3:ncol(combined.df)])
melted <- melt(combined.df, c("Subject", "Activity"), vars=meanColumns)
combined.df.summary <- dcast(melted, Subject+Activity ~ variable, mean)

# Return Tidy Data Set
combined.df