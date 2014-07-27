Getting and Cleaning Data Course Project CodeBook
This file describes the variables, 
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


 $ subject                 : int  [1:30] 
 $ activity                : Factor w/ 6 levels 
                            1 walking
                            2 walkingUpstairs
                            3 walkingDownstairs
                            4 sitting
                            5 standing
                            6 laying

 $ tBodyAccMeanX           :  time body acceleration mean for X axial
 $ tBodyAccMeanY           :  time body acceleration mean for Y axial
 $ tBodyAccMeanZ           :  time body acceleration mean for Z axial
 $ tBodyAccStdX            :  time body acceleration Standard deviation for X axial
 $ tBodyAccStdY            :  time body acceleration Standard deviation for Y axial
 $ tBodyAccStdZ            :  time body acceleration Standard deviation for Z axial
 $ tGravityAccMeanX        :  time gravity acceleration mean for X axial
 $ tGravityAccMeanY        :  time gravity acceleration mean for Y axial
 $ tGravityAccMeanZ        :  time gravity acceleration mean for Z axial
 $ tGravityAccStdX         :  time gravity acceleration standard deviation for X axial
 $ tGravityAccStdY         :  time gravity acceleration standard deviation for Y axial
 $ tGravityAccStdZ         :  time gravity acceleration standard deviation for Z axial
 $ tBodyAccJerkMeanX       :  time body acceleration jerk mean for X axial
 $ tBodyAccJerkMeanY       :  time body acceleration jerk mean for Y axial
 $ tBodyAccJerkMeanZ       :  time body acceleration jerk mean for Z axial
 $ tBodyAccJerkStdX        :  time body acceleration jerk standard deviation for X axial
 $ tBodyAccJerkStdY        :  time body acceleration jerk standard deviation for Y axial
 $ tBodyAccJerkStdZ        :  time body acceleration jerk standard deviation for Z axial
 $ tBodyGyroMeanX          :  time body gyroscope mean for X axial
 $ tBodyGyroMeanY          :  time body gyroscope mean for Y axial
 $ tBodyGyroMeanZ          :  time body gyroscope mean for Z axial
 $ tBodyGyroStdX           :  time body gyroscope standard deviation for X axial
 $ tBodyGyroStdY           :  time body gyroscope standard deviation for Y axial
 $ tBodyGyroStdZ           :  time body gyroscope standard deviation for Z axial
 $ tBodyGyroJerkMeanX      :  time body gyroscope jerk mean for X axial
 $ tBodyGyroJerkMeanY      :  time body gyroscope jerk mean for Y axial
 $ tBodyGyroJerkMeanZ      :  time body gyroscope jerk mean for Z axial
 $ tBodyGyroJerkStdX       :  time body gyroscope jerk standard deviation for X axial
 $ tBodyGyroJerkStdY       :  time body gyroscope jerk standard deviation for Y axial
 $ tBodyGyroJerkStdZ       :  time body gyroscope jerk standard deviation for Z axial
 $ tBodyAccMagMean         :  time body accelerometer mean 
 $ tBodyAccMagStd          :  time body accelerometer standard deviation
 $ tGravityAccMagMean      :  time gravity accelerometer mean
 $ tGravityAccMagStd       :  time gravity accelerometer standard deviation 
 $ tBodyAccJerkMagMean     :  time body accelerometer jerk mean
 $ tBodyAccJerkMagStd      :  time body accelerometer jerk standard deviation 
 $ tBodyGyroMagMean        :  time body gyroscope mean 
 $ tBodyGyroMagStd         :  time body gyroscope standard deviation 
 $ tBodyGyroJerkMagMean    :  time body gyroscope jerk mean 
 $ tBodyGyroJerkMagStd     :  time body gyroscope jerk standard deviation 
 $ fBodyAccMeanX           :  FFT body accelerometer mean for X axial
 $ fBodyAccMeanY           :  FFT body accelerometer mean for Y axial   
 $ fBodyAccMeanZ           :  FFT body accelerometer mean for Z axial
 $ fBodyAccStdX            :  FFT body accelerometer standard deviation for X axial
 $ fBodyAccStdY            :  FFT body accelerometer standard deviation for Y axial
 $ fBodyAccStdZ            :  FFT body accelerometer standard deviation for Z axial
 $ fBodyAccJerkMeanX       :  FFT body accelerometer jerk mean for X axial
 $ fBodyAccJerkMeanY       :  FFT body accelerometer jerk mean for Y axial
 $ fBodyAccJerkMeanZ       :  FFT body accelerometer jerk mean for Z axial
 $ fBodyAccJerkStdX        :  FFT body accelerometer jerk standard deviation for X axial
 $ fBodyAccJerkStdY        :  FFT body accelerometer jerk standard deviation for Y axial
 $ fBodyAccJerkStdZ        :  FFT body accelerometer jerk standard deviation for Z axial
 $ fBodyGyroMeanX          :  FFT body gyroscope mean for x axial
 $ fBodyGyroMeanZ          :  FFT body gyroscope mean for Z axial
 $ fBodyGyroStdX           :  FFT body gyroscope standard deviation for x axial
 $ fBodyGyroStdY           :  FFT body gyroscope standard deviation for Y axial
 $ fBodyGyroStdZ           :  FFT body gyroscope standard deviation for Z axial
 $ fBodyAccMagMean         :  FFT body accelerometer mean for x axial
 $ fBodyAccMagStd          :  FFT body accelerometer standard deviation 
 $ fBodyBodyAccJerkMagMean :  FFT body accelerometer jerk mean 
 $ fBodyBodyAccJerkMagStd  :  FFT body accelerometer jerk standard deviation 
 $ fBodyBodyGyroMagMean    :  FFT body gyroscope mean
 $ fBodyBodyGyroMagStd     :  FFT body gyroscope standard deviation 
 $ fBodyBodyGyroJerkMagMean:  FFT body gyroscope jerk mean
 $ fBodyBodyGyroJerkMagStd :  FFT body gyroscope jerk standard deviation 
 
