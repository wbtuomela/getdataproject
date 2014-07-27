# Getting and Cleaning Data Course Project

## run_analysis.R explaination
R code assumes the data has been downloaded to the current working directory.

### Extract and Read Data Files

    1 unzip the data
    2 read column names from features.txt
    3 remove 'BodyBody' typo from column names
    4 add 2 merged columns to final vector of column names
    5 read activity labels from activity_labels.txt

### Loading and Binding Training Data

    1 read training data from X_train.txt
    2 read training activity labels from y_train.txt
    3 read training subjects from subject_train.txt
    4 column bind data into training data frame
    5 apply column names to training data frame

### Loading and Binding Test Data

    1 read training data from X_test.txt
    2 read training activity labels from y_test.txt
    3 read training subjects from subject_test.txt
    4 column bind data into test data frame
    5 apply column names to test data frame

### Combine training and test dataset

    1 row bind the 2 data sets together
    2 clean up environment of all child dataframes
    3 make activity column a factor
    4 make subject column a factor

### Extract mean and std

    1 use grep to select mean and std column names
    2 add in subject and activity column names
    3 create a new data frame of just selected columns
    4 remove parens from column names
    
### Summary tidy dataset

    1 use aggregate to average each variable by each activity and subject
    2 write new tidy dataset
