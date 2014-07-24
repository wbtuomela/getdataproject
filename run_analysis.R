# Get Data Course Project

# unzip data files
#unzip('getdata_projectfiles_UCI HAR Dataset.zip')

# read column names from features.txt
# and reduce to a vector since index is redundant and fix BodyBody name error
colNames <- read.delim('UCI HAR Dataset/features.txt',
                       sep = ' ', header=F, col.names=c('index', 'name'),
                       colClasses=c('integer', 'character'))
colNames <- sub('BodyBody', 'Body', colNames$name, fixed=T)
# setup final column names for tidy data
all_columns <- append(colNames, c('subject', 'activity'), 0)
actives <- read.table('UCI HAR Dataset/activity_labels.txt', header=F,
                      col.names=c('index', 'label'),
                      colClasses=c('integer', 'character'))

# load and bind training data
train <- read.table('UCI HAR Dataset/train/X_train.txt', header=F, sep="")
train_labels <- read.table('UCI HAR Dataset/train/y_train.txt', header=F,
                           colClasses=c('integer'), col.names=c('activity'))
train_subject <- read.table('UCI HAR Dataset/train/subject_train.txt', header=F,
                            colClasses=c('integer'), col.names=c('subject'))
train <- cbind(train_subject$subject, train_labels$activity, train)
colnames(train) <- all_columns
rm('train_labels', 'train_subject')

# load and bind test data
test <- read.table('UCI HAR Dataset/test/X_test.txt', header=F, sep="")
test_labels <- read.table('UCI HAR Dataset/test/y_test.txt', header=F,
                           colClasses=c('integer'), col.names=c('activity'))
test_subject <- read.table('UCI HAR Dataset/test/subject_test.txt', header=F,
                           colClasses=c('integer'), col.names=c('subject'))
test <- cbind(test_subject$subject, test_labels$activity, test)
colnames(test) <- all_columns
rm('test_labels', 'test_subject')

# rbind training and test data into a single dataset and cleanup env
data <- rbind(train, test)
rm('train', 'test')
data$activity <- factor(data$activity, levels=actives$index,
                        labels=actives$label)
data$subject <- factor(data$subject)
# write full tidy dataset
#write.csv(data, file="human_activity.csv")

# extract mean and std measurements for smaller dataset
cols <- colNames[grepl('mean()',colNames, fixed=T) |
                 grepl('std()', colNames, fixed=T)]
cols <- append(cols, c('subject', 'activity'), 0)
dt <- subset(data, select=cols)

# means of the selected columns over every (activity, subject) tuple
summary_dt <- aggregate(. ~ subject+activity, data=dt, FUN=mean)

# write summary dataset as csv
write.csv(summary_dt, file="human_activity_summary.csv")



