# Coursera - Getting and Cleaning Data - Course Project

## Run the script!
1. Open RStudio
1. Set the working directory with the R command ```setwd```
1. Run the command ```source(run_analysis.R)```

## How the script works
1. Downloads the data set zip file
1. Unzips the data set
1. Merges training and test data together
1. Extracts the features that are related to mean and standard deviation
1. Changes the feature names to more descriptive, legible, and expressive names
1. Creates an independent data set which is an aggregated mean by subject and activity
1. Writes the file ```subject_activity_means.txt``` from this aggregate mean data set

## Cookbook
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

### Variables
| Variable Name                 | Class     | Type | Description                                          | Range       |
| :---------------------------: | --------- | ---- | ---------------------------------------------------- | ----------
| subject                       | Integer   | NA   | Id of the subject                                    | 1..30       |
| activity                      | character | NA   | Type of activity performed by the subject            | [walking,walkingUpstairs,walkingDownstairs,Sitting,Standing,Laying] |
| timeBodyAccMeanX              | Numeric   | Time | Body Accelerometer X-Axis Mean                       | -1.0..1.0   |
| timeBodyAccMeanY              | Numeric   | Time | Body Accelerometer Y-Axis Mean                       | -1.0..1.0   |
| timeBodyAccMeanZ              | Numeric   | Time | Body Accelerometer Z-Axis Mean                       | -1.0..1.0   |
| timeBodyAccStdX               | Numeric   | Time | Body Accelerometer X-Axis Standard Deviation         | -1.0..1.0   |
| timeBodyAccStdY               | Numeric   | Time | Body Accelerometer Y-Axis Standard Deviation         | -1.0..1.0   |
| timeBodyAccStdZ               | Numeric   | Time | Body Accelerometer Z-Axis Standard Deviation         | -1.0..1.0   |
| timeGravityAccMeanX           | Numeric   | Time | Gravity Accelerometer X-Axis Mean                    | -1.0..1.0   |
| timeGravityAccMeanY           | Numeric   | Time | Gravity Accelerometer Y-Axis Mean                    | -1.0..1.0   |
| timeGravityAccMeanZ           | Numeric   | Time | Gravity Accelerometer Z-Axis Mean                    | -1.0..1.0   |
| timeGravityAccStdX            | Numeric   | Time | Gravity Accelerometer X-Axis Standard Deviation      | -1.0..1.0   |
| timeGravityAccStdY            | Numeric   | Time | Gravity Accelerometer Y-Axis Standard Deviation      | -1.0..1.0   |
| timeGravityAccStdZ            | Numeric   | Time | Gravity Accelerometer Z-Axis Standard Deviation      | -1.0..1.0   |
| timeBodyAccJerkMeanX          | Numeric   | Time | Body Accelerometer Jerk X-Axis Mean                  | -1.0..1.0   |
| timeBodyAccJerkMeanY          | Numeric   | Time | Body Accelerometer Jerk Y-Axis Mean                  | -1.0..1.0   |
| timeBodyAccJerkMeanZ          | Numeric   | Time | Body Accelerometer Jerk Z-Axis Mean                  | -1.0..1.0   |
| timeBodyAccJerkStdX           | Numeric   | Time | Body Accelerometer X-Axis Standard Deviation         | -1.0..1.0   |
| timeBodyAccJerkStdY           | Numeric   | Time | Body Accelerometer Y-Axis Standard Deviation         | -1.0..1.0   |
| timeBodyAccJerkStdZ           | Numeric   | Time | Body Accelerometer Z-Axis Standard Deviation         | -1.0..1.0   |
| timeBodyGyroMeanX             | Numeric   | Time | Body Gyroscope X-Axis Mean                           | -1.0..1.0   |
| timeBodyGyroMeanY             | Numeric   | Time | Body Gyroscope Y-Axis Mean                           | -1.0..1.0   |
| timeBodyGyroMeanZ             | Numeric   | Time | Body Gyroscope Z-Axis Mean                           | -1.0..1.0   |
| timeBodyGyroStdX              | Numeric   | Time | Body Gyroscope X-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyGyroStdY              | Numeric   | Time | Body Gyroscope Y-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyGyroStdZ              | Numeric   | Time | Body Gyroscope Z-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyGyroJerkMeanX         | Numeric   | Time | Body Gyroscope Jerk X-Axis Mean                      | -1.0..1.0   |
| timeBodyGyroJerkMeanY         | Numeric   | Time | Body Gyroscope Jerk Y-Axis Mean                      | -1.0..1.0   |
| timeBodyGyroJerkMeanZ         | Numeric   | Time | Body Gyroscope Jerk Z-Axis Mean                      | -1.0..1.0   |
| timeBodyGyroJerkStdX          | Numeric   | Time | Body Gyroscope X-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyGyroJerkStdY          | Numeric   | Time | Body Gyroscope Y-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyGyroJerkStdZ          | Numeric   | Time | Body Gyroscope Z-Axis Standard Deviation             | -1.0..1.0   |
| timeBodyAccMagMean            | Numeric   | Time | Body Accelerometer Magnitude Mean                    | -1.0..1.0   |
| timeBodyAccMagStd             | Numeric   | Time | Body Accelerometer Magnitude Standard Deviation      | -1.0..1.0   |
| timeGravityAccMagMean         | Numeric   | Time | Gravity Accelerometer Magnitude Mean                 | -1.0..1.0   |
| timeGravityAccMagStd          | Numeric   | Time | Gravity Accelerometer Magnitude Standard Deviation   | -1.0..1.0   |
| timeBodyAccJerkMagMean        | Numeric   | Time | Body Accelerometer Jerk Magnitude Mean               | -1.0..1.0   |
| timeBodyAccJerkMagStd         | Numeric   | Time | Body Accelerometer Jerk Magnitude Standard Deviation | -1.0..1.0   |
| timeBodyGyroMagMean           | Numeric   | Time | Body Gyroscope Magnitude Mean                        | -1.0..1.0   |
| timeBodyGyroMagStd            | Numeric   | Time | Body Gyroscope Magnitude Standard Deviation          | -1.0..1.0   |
| timeBodyGyroJerkMagMean       | Numeric   | Time | Body Gyroscope Jerk Magnitude Mean                   | -1.0..1.0   |
| timeBodyGyroJerkMagStd        | Numeric   | Time | Body Gyroscope Jerk Magnitude Standard Deviation     | -1.0..1.0   |
| freqBodyAccMeanX              | Numeric   | Freq | Body Accelerometer X-Axis Mean                       | -1.0..1.0   |
| freqBodyAccMeanY              | Numeric   | Freq | Body Accelerometer Y-Axis Mean                       | -1.0..1.0   |
| freqBodyAccMeanZ              | Numeric   | Freq | Body Accelerometer Z-Axis Mean                       | -1.0..1.0   |
| freqBodyAccStdX               | Numeric   | Freq | Body Accelerometer X-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccStdY               | Numeric   | Freq | Body Accelerometer Y-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccStdZ               | Numeric   | Freq | Body Accelerometer Z-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccMeanFreqX          | Numeric   | Freq | Body Accelerometer X-Axis Mean Frequency             | -1.0..1.0   |
| freqBodyAccMeanFreqY          | Numeric   | Freq | Body Accelerometer Y-Axis Mean Frequency             | -1.0..1.0   |
| freqBodyAccMeanFreqZ          | Numeric   | Freq | Body Accelerometer Z-Axis Mean Frequency             | -1.0..1.0   |
| freqBodyAccJerkMeanX          | Numeric   | Freq | Body Accelerometer Jerk X-Axis Mean                  | -1.0..1.0   |
| freqBodyAccJerkMeanY          | Numeric   | Freq | Body Accelerometer Jerk Y-Axis Mean                  | -1.0..1.0   |
| freqBodyAccJerkMeanZ          | Numeric   | Freq | Body Accelerometer Jerk Z-Axis Mean                  | -1.0..1.0   |
| freqBodyAccJerkStdX           | Numeric   | Freq | Body Accelerometer X-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccJerkStdY           | Numeric   | Freq | Body Accelerometer Y-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccJerkStdZ           | Numeric   | Freq | Body Accelerometer Z-Axis Standard Deviation         | -1.0..1.0   |
| freqBodyAccJerkMeanFreqX      | Numeric   | Freq | Body Accelerometer Jerk X-Axis Mean Frequency        | -1.0..1.0   |
| freqBodyAccJerkMeanFreqY      | Numeric   | Freq | Body Accelerometer Jerk Y-Axis Mean Frequency        | -1.0..1.0   |
| freqBodyAccJerkMeanFreqZ      | Numeric   | Freq | Body Accelerometer Jerk Z-Axis Mean Frequency        | -1.0..1.0   |
| freqBodyGyroMeanX             | Numeric   | Freq | Body Gyroscope X-Axis Mean                           | -1.0..1.0   |
| freqBodyGyroMeanY             | Numeric   | Freq | Body Gyroscope Y-Axis Mean                           | -1.0..1.0   |
| freqBodyGyroMeanZ             | Numeric   | Freq | Body Gyroscope Z-Axis Mean                           | -1.0..1.0   |
| freqBodyGyroStdX              | Numeric   | Freq | Body Gyroscope X-Axis Standard Deviation             | -1.0..1.0   |
| freqBodyGyroStdY              | Numeric   | Freq | Body Gyroscope Y-Axis Standard Deviation             | -1.0..1.0   |
| freqBodyGyroStdZ              | Numeric   | Freq | Body Gyroscope Z-Axis Standard Deviation             | -1.0..1.0   |
| freqBodyGyroMeanFreqX         | Numeric   | Freq | Body Gyroscope X-Axis Mean Frequency                 | -1.0..1.0   |
| freqBodyGyroMeanFreqY         | Numeric   | Freq | Body Gyroscope X-Axis Mean Frequency                 | -1.0..1.0   |
| freqBodyGyroMeanFreqZ         | Numeric   | Freq | Body Gyroscope X-Axis Mean Frequency                 | -1.0..1.0   |
| freqBodyAccMagMean            | Numeric   | Freq | Body Accelerometer Magnitude Mean                    | -1.0..1.0   |
| freqBodyAccMagStd             | Numeric   | Freq | Body Accelerometer Magnitude Standard Deviation      | -1.0..1.0   |
| freqBodyAccMagMeanFreq        | Numeric   | Freq | Body Accelerometer Magnitude Mean Frequency          | -1.0..1.0   |
| freqBodyAccJerkMagMean        | Numeric   | Freq | Body Accelerometer Jerk Magnitude Mean               | -1.0..1.0   |
| freqBodyAccJerkMagStd         | Numeric   | Freq | Body Accelerometer Jerk Magnitude Standard Deviation | -1.0..1.0   |
| freqBodyAccJerkMagMeanFreq    | Numeric   | Freq | Body Accelerometer Jerk Magnitude Mean Frequency     | -1.0..1.0   |
| freqBodyGyroMagMean           | Numeric   | Freq | Body Gyroscope Magnitude Mean                        | -1.0..1.0   |
| freqBodyGyroMagStd            | Numeric   | Freq | Body Gyroscope Magnitude Standard Deviation          | -1.0..1.0   |
| freqBodyGyroMagMeanFreq       | Numeric   | Freq | Body Gyroscope Magnitude Mean Frequency              | -1.0..1.0   |
| freqBodyGyroJerkMagMean       | Numeric   | Freq | Body Gyroscope Jerk Magnitude Mean                   | -1.0..1.0   |
| freqBodyGyroJerkMagStd        | Numeric   | Freq | Body Gyroscope Jerk Magnitude Standard Deviation     | -1.0..1.0   |
| freqBodyGyroJerkMagMeanFreq   | Numeric   | Freq | Body Gyroscope Jerk Magnitude Mean Frequency         | -1.0..1.0   |
