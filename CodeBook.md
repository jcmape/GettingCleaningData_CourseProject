# Code Book
This code book summarizes the resulting data in tidy_data.txt.

## Data Source
The data and description can be found in UCI Machine Learning Repository.

## Dataset Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Identifiers
1. subject - the ID of the test subjects
2. activity - the type of activity performed when the measurements are taken

## Activity Labels
  WALKING: subject was walking
  WALKING_UPSTAIRS: subject was walking upstairs
  WALKING_DOWNSTAIRS: subject was walking downstairs
  SITTING: subject was sitting
  STANDING: subject was standing
  LAYING: subject was laying

## Measurements
The tidy_data.txt contains the averages of the following measurements:
    tBodyAccmeanX                
    tBodyAccmeanY                
    tBodyAccmeanZ               
    tBodyAccstdX                 
    tBodyAccstdY                 
    tBodyAccstdZ                
    tGravityAccmeanX             
    tGravityAccmeanY             
    tGravityAccmeanZ            
    tGravityAccstdX              
    tGravityAccstdY              
    tGravityAccstdZ             
    tBodyAccJerkmeanX            
    tBodyAccJerkmeanY            
    tBodyAccJerkmeanZ           
    tBodyAccJerkstdX             
    tBodyAccJerkstdY             
    tBodyAccJerkstdZ            
    tBodyGyromeanX               
    tBodyGyromeanY               
    tBodyGyromeanZ              
    tBodyGyrostdX                
    tBodyGyrostdY               
    tBodyGyrostdZ               
    tBodyGyroJerkmeanX           
    tBodyGyroJerkmeanY           
    tBodyGyroJerkmeanZ          
    tBodyGyroJerkstdX            
    tBodyGyroJerkstdY            
    tBodyGyroJerkstdZ           
    tBodyAccMagmean              
    tBodyAccMagstd               
    tGravityAccMagmean          
    tGravityAccMagstd            
    tBodyAccJerkMagmean          
    tBodyAccJerkMagstd          
    tBodyGyroMagmean             
    tBodyGyroMagstd              
    tBodyGyroJerkMagmean        
    tBodyGyroJerkMagstd          
    fBodyAccmeanX                
    fBodyAccmeanY               
    fBodyAccmeanZ                
    fBodyAccstdX                 
    fBodyAccstdY                
    fBodyAccstdZ                 
    fBodyAccmeanFreqX            
    fBodyAccmeanFreqY           
    fBodyAccmeanFreqZ            
    fBodyAccJerkmeanX            
    fBodyAccJerkmeanY           
    fBodyAccJerkmeanZ            
    fBodyAccJerkstdX             
    fBodyAccJerkstdY            
    fBodyAccJerkstdZ             
    fBodyAccJerkmeanFreqX        
    fBodyAccJerkmeanFreqY       
    fBodyAccJerkmeanFreqZ        
    fBodyGyromeanX               
    fBodyGyromeanY              
    fBodyGyromeanZ               
    fBodyGyrostdX                
    fBodyGyrostdY               
    fBodyGyrostdZ                
    fBodyGyromeanFreqX           
    fBodyGyromeanFreqY          
    fBodyGyromeanFreqZ          
    fBodyAccMagmean             
    fBodyAccMagstd              
    fBodyAccMagmeanFreq          
    fBodyBodyAccJerkMagmean      
    fBodyBodyAccJerkMagstd      
    fBodyBodyAccJerkMagmeanFreq 
    fBodyBodyGyroMagmean        
    fBodyBodyGyroMagstd         
    fBodyBodyGyroMagmeanFreq     
    fBodyBodyGyroJerkMagmean     
    fBodyBodyGyroJerkMagstd     
    fBodyBodyGyroJerkMagmeanFreq
