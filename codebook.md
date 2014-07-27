# Data Dictionary - Human Activity Summary Data

subject     INTEGER

    Subject whom performed the activity
    
        1..30
        
activity    INTEGER

    Activity classes of the measured data
    
        1 WALKING  
        2 WALKING UPSTAIRS  
        3 WALKING DOWNSTAIRS  
        4 SITTING  
        5 STANDING  
        6 LAYING  

## Time Domain Data
All of these data points are of type NUMERIC and are the mean of their raw values per subject and activity pair.

Body Acceleration in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    tBodyAcc-mean-X  
    tBodyAcc-mean-Y  
    tBodyAcc-mean-Z  
    tBodyAcc-std-X  
    tBodyAcc-std-Y  
    tBodyAcc-std-Z  

Acceleration due to gravity in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    tGravityAcc-mean-X  
    tGravityAcc-mean-Y  
    tGravityAcc-mean-Z  
    tGravityAcc-std-X  
    tGravityAcc-std-Y  
    tGravityAcc-std-Z  

Body Acceleration Jerk in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    tBodyAccJerk-mean-X  
    tBodyAccJerk-mean-Y  
    tBodyAccJerk-mean-Z  
    tBodyAccJerk-std-X  
    tBodyAccJerk-std-Y  
    tBodyAccJerk-std-Z  

Body Gyroscopic measure in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    tBodyGyro-mean-X  
    tBodyGyro-mean-Y  
    tBodyGyro-mean-Z  
    tBodyGyro-std-X  
    tBodyGyro-std-Y  
    tBodyGyro-std-Z  

Body Gryoscoptic Jerk measure in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    tBodyGyroJerk-mean-X  
    tBodyGyroJerk-mean-Y  
    tBodyGyroJerk-mean-Z  
    tBodyGyroJerk-std-X  
    tBodyGyroJerk-std-Y  
    tBodyGyroJerk-std-Z  

Body Acceleration Magitude, mean and std of raw values, then mean per subject and activity.

    tBodyAccMag-mean  
    tBodyAccMag-std  

Magnitude of Acceleration due to gravity, mean and std of raw values, then mean per subject and activity.

    tGravityAccMag-mean  
    tGravityAccMag-std  

Body Acceleration Jerk Magnitude, mean and std of raw values, then mean per subject and activity.

    tBodyAccJerkMag-mean  
     tBodyAccJerkMag-std  

Body Gyroscopic Magnitude, mean and std of raw values, then mean per subject and activity.

    tBodyGyroMag-mean  
    tBodyGyroMag-std  

Body Gyroscopic Jerk Magnitude, mean and std of raw values, then mean per subject and activity.

    tBodyGyroJerkMag-mean  
    tBodyGyroJerkMag-std  

## Frequency Domain Data
Fast Fourier Transform (FFT) was applied to some of time signals to obtain frequency domain data. All these data points are of type NUMERIC and are the mean of their raw values per subject and activity pair.

Body Acceleration in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    fBodyAcc-mean-X  
    fBodyAcc-mean-Y  
    fBodyAcc-mean-Z  
    fBodyAcc-std-X  
    fBodyAcc-std-Y  
    fBodyAcc-std-Z  

Body Acceleration Jerk in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    fBodyAccJerk-mean-X  
    fBodyAccJerk-mean-Y  
    fBodyAccJerk-mean-Z  
    fBodyAccJerk-std-X  
    fBodyAccJerk-std-Y  
    fBodyAccJerk-std-Z  

Body Gyroscopic measure in X, Y, Z planes, mean and std of raw values, then mean per subject and activity.

    fBodyGyro-mean-X  
    fBodyGyro-mean-Y  
    fBodyGyro-mean-Z  
    fBodyGyro-std-X  
    fBodyGyro-std-Y  
    fBodyGyro-std-Z  

Body Acceleration Magitude, mean and std of raw values, then mean per subject and activity.

    fBodyAccMag-mean  
    fBodyAccMag-std  

Body Acceleration Jerk Magnitude, mean and std of raw values, then mean per subject and activity.

    fBodyAccJerkMag-mean  
    fBodyAccJerkMag-std  

Body Gyroscopic Magnitude, mean and std of raw values, then mean per subject and activity.

    fBodyGyroMag-mean  
    fBodyGyroMag-std  

Body Gyroscopic Jerk Magnitude, mean and std of raw values, then mean per subject and activity.

    fBodyGyroJerkMag-mean  
    fBodyGyroJerkMag-std  