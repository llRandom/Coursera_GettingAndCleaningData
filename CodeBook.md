# CodeBook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMag, timeGravityAccelerometerMag, timeBodyAccelerometerJerkMag, timeBodyGyroscopeMag, timeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: meanValue, standardDeviation.

Each measurement belongs to a specific activity and subject. Original features are normalized and bounded within [-1,1]. Each variable was grouped and averaged by activity and subject.

## Variables
- activity
- subject
- timeBodyAccelerometer-meanValue-X
- timeBodyAccelerometer-meanValue-Y
- timeBodyAccelerometer-meanValue-Z
- timeBodyAccelerometer-standardDeviation-X
- timeBodyAccelerometer-standardDeviation-Y
- timeBodyAccelerometer-standardDeviation-Z
- timeGravityAccelerometer-meanValue-X
- timeGravityAccelerometer-meanValue-Y
- timeGravityAccelerometer-meanValue-Z
- timeGravityAccelerometer-standardDeviation-X
- timeGravityAccelerometer-standardDeviation-Y
- timeGravityAccelerometer-standardDeviation-Z
- timeBodyAccelerometerJerk-meanValue-X
- timeBodyAccelerometerJerk-meanValue-Y
- timeBodyAccelerometerJerk-meanValue-Z
- timeBodyAccelerometerJerk-standardDeviation-X
- timeBodyAccelerometerJerk-standardDeviation-Y
- timeBodyAccelerometerJerk-standardDeviation-Z
- timeBodyGyroscope-meanValue-X
- timeBodyGyroscope-meanValue-Y
- timeBodyGyroscope-meanValue-Z
- timeBodyGyroscope-standardDeviation-X
- timeBodyGyroscope-standardDeviation-Y
- timeBodyGyroscope-standardDeviation-Z
- timeBodyGyroscopeJerk-meanValue-X
- timeBodyGyroscopeJerk-meanValue-Y
- timeBodyGyroscopeJerk-meanValue-Z
- timeBodyGyroscopeJerk-standardDeviation-X
- timeBodyGyroscopeJerk-standardDeviation-Y
- timeBodyGyroscopeJerk-standardDeviation-Z
- frequencyBodyAccelerometer-meanValue-X
- frequencyBodyAccelerometer-meanValue-Y
- frequencyBodyAccelerometer-meanValue-Z
- frequencyBodyAccelerometer-standardDeviation-X
- frequencyBodyAccelerometer-standardDeviation-Y
- frequencyBodyAccelerometer-standardDeviation-Z
- frequencyBodyAccelerometerJerk-meanValue-X
- frequencyBodyAccelerometerJerk-meanValue-Y
- frequencyBodyAccelerometerJerk-meanValue-Z
- frequencyBodyAccelerometerJerk-standardDeviation-X
- frequencyBodyAccelerometerJerk-standardDeviation-Y
- frequencyBodyAccelerometerJerk-standardDeviation-Z
- frequencyBodyGyroscope-meanValue-X
- frequencyBodyGyroscope-meanValue-Y
- frequencyBodyGyroscope-meanValue-Z
- frequencyBodyGyroscope-standardDeviation-X
- frequencyBodyGyroscope-standardDeviation-Y
- frequencyBodyGyroscope-standardDeviation-Z