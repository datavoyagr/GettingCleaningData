Code Book for Tidy Data Project
========================================================

Description of Study
--------------------
The data for this analysis came from the *Human Activity Recognition Using Smartphones Data Set* from the Smartlab-Non Linear Complex Systems Laboratory in Genoa, Italy. The study was conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto.

It was an experiment whereby data was gathered from thirty participants who wore smartphones on their belts while performing six activities: walking, walking upstairs, walking downstairs, sitting, standing and laying.

Procedure for Creating the Tidy Data File
-----------------------------------------
The tidy data file was creating using the raw data from this study. An R-script file (run_analysis.R) was created to extract the needed data. The following files were used in the script:
* features.txt: list of all the features (variables) being measured
* X_test.txt: measurement data for the Test set
* y_test.txt: list of activity id for Test set
* subject_test.txt: subject id data for Test set
* X_train.txt: measurement data for the Train set
* Y_train.txt: list of activity id for Train set
* Subject_train.txt: subject id data for Train set

The files were joined, cleaned up, and the necessary data was extracted into a file called *tidydata.txt*.

Detailed information about how this script processed the data into the tidydata can be found in the *readme.md* file found in this repo.

Description of Variables in the Tidy Data 
------------------------------------------

Below you will find descriptions of the variables in the tidy data set.

Variable Name   |Description                                                                                   
--------------- |---------------------------------------------------------------------------        
subjectid       |a number identifying the subject who performed the activity for each sample. Values range 1-30 (Factor)              
activityid      |one of six activities being measured: walking, walking upstairs, walking downstairs, sitting, standing laying. (Factor)                                                      
tbodyaccmean    |mean of time body acceleration signal X-dimension (numeric)
tbodyaccmean.1  |mean of time body acceleration signal Y-dimension (numeric)
tbodyaccmean.2  |mean of time body acceleration signal Z-dimension (numeric)
tbodyaccstd     |mean of standard deviation of time body acceleration signal X-dimension (numeric)
tbodyaccstd.1   |mean of standard deviation of time body acceration signal Y-dimension (numeric)
tbodyaccstd.2   |mean of standard deviation of time body acceration signal Z-dimension (numeric)
tgravityaccmean |mean of time gravity acceleration signal X-dimension (numeric)
tgravityaccmean.1       |mean of time gravity accelation signal Y-dimension (numeric)
tgravityaccmean.2       |mean of time gravity accelation signal Z-dimension (numeric)
tgravityaccstd  |mean of standard deviation of time gravity acceleration signal X-dimension (numeric)
tgravityaccstd.1        |mean of standard deviation of time gravity acceleration signal Y-dimension (numeric)
tgravityaccstd.2        |mean of standard deviation of time gravity acceleration signal Z-dimension (numeric)
tbodyaccjerkmean        |mean of time body linear acceleration X-dimension (numeric)
tbodyaccjerkmean.1      |mean of time body linear accelaration Y-dimension (numeric)
tbodyaccjerkmean.2      |mean of time body linear accelaration Z-dimension (numeric)
tbodyaccjerkstd |mean of standard deviation of time body linear acceleration X-dimension (numeric)
tbodyaccjerkstd.1       |mean of standard deviation of time body linear acceleration Y-dimension (numeric)
tbodyaccjerkstd.2       |mean of standard deviation of time body linear accelaration Z-dimension (numeric)
tbodygyromean   |mean of time body gyroscope measurement X-dimension (numeric)
tbodygyromean.1 |mean of time body gyroscope measurement Y-dimension (numeric)
tbodygyromean.2 |mean of time body gyroscope measurement Z-dimension (numeric)
tbodygyrostd    |mean of standard deviation of time body gyroscope measurement X-dimension (numeric)
tbodygyrostd.1  |mean of standard deviation of time body gyroscope measurement Y-dimension (numeric)
tbodygyrostd.2  |mean of standard deviation of time body gyroscope measurement Z-dimension (numeric)
tbodygyrojerkmean       |mean of time body angular velocity X-dimension (numeric)
tbodygyrojerkmean.1     |mean of time body angular velocity Y-dimension (numeric)
tbodygyrojerkmean.2     |mean of time body angular velocity Z-dimension (numeric)
tbodygyrojerkstd        |mean of standard deviation of time body angular velocity X-dimension (numeric)
tbodygyrojerkstd.1      |mean of standard deviation of time body angular velocity Y-dimension (numeric)
tbodygyrojerkstd.2      |mean of standard deviation of time body angular velocity Z-dimension (numeric)
tbodyaccmagmean |mean of magnitude of time body acceleration signal (numeric)
tbodyaccmagstd  |mean of standard deviation of mean of magnitude of time body acceleration signal (numeric)
tgravityaccmagmean      |mean of magnitude of time gravity acceleration signal (numeric)
tgravityaccmagstd       |mean of standard deviation of mean of magnitude of time gravity acceleration signal (numeric)
tbodyaccjerkmagmean     |mean of magnitude of mean of time body linear acceleration (numeric)
tbodyaccjerkmagstd      |mean of standard deviation of mean of magnitude of time body linear acceleration (numeric)
tbodygyromagmean        |mean of magnitude of time body gyroscope measurement (numeric)
tbodygyromagstd |standard deviation of mean of magnitude of time body gyroscope measurement (numeric)
tbodygyrojerkmagmean    |mean of magnitude of mean of time body angular velocity (numeric)
tbodygyrojerkmagstd     |mean of standard deviation of mean of magnitude of mean of time body angular velocity (numeric)
fbodyaccmean    |mean of fast fourier transform of time body acceleration signal X-dimension (numeric)
fbodyaccmean.1  |mean of fast fourier transform of time body acceleration signal Y-dimension (numeric)
fbodyaccmean.2  |mean of fast fourier transform of time body acceleration signal Z-dimension (numeric)
fbodyaccstd     |mean of standard deviation of mean of fast fourier transform of time body acceleration signal X-dimension (numeric)
fbodyaccstd.1   |mean of standard deviation of mean of fast fourier transform of time body acceleration signal Y-dimension (numeric)
fbodyaccstd.2   |mean of standard deviation of mean of fast fourier transform of time body acceleration signal Z-dimension (numeric)
fbodyaccjerkmean        |mean of fast fourier transform of time body linear acceleration X-dimension (numeric)
fbodyaccjerkmean.1      |mean of fast fourier transform of time body linear acceleration Y-dimension (numeric)
fbodyaccjerkmean.2      |mean of fast fourier transform of time body linear acceleration Z-dimension (numeric)
fbodyaccjerkstd |mean of standard deviation of mean of fast fourier transform of time body linear acceleration X-dimension (numeric)
fbodyaccjerkstd.1       |mean of standard deviation of mean of fast fourier transform of time body linear acceleration Y-dimension (numeric)
fbodyaccjerkstd.2       |mean of standard deviation of mean of fast fourier transform of time body linear acceleration Z-dimension (numeric)
fbodygyromean   |mean of fast fourier transform of time body gyroscope measurement X-dimension (numeric)
fbodygyromean.1 |mean of fast fourier transform of time body gyroscope measurement Y-dimension (numeric)
fbodygyromean.2 |mean of fast fourier transform of time body gyroscope measurement Z-dimension (numeric)
fbodygyrostd    |mean of standard deviation of mean of fast fourier transform of time body gyroscope measurement X-dimension (numeric)
fbodygyrostd.1  |mean of standard deviation of mean of fast fourier transform of time body gyroscope measurement Y-dimension (numeric)
fbodygyrostd.2  |mean of standard deviation of mean of fast fourier transform of time body gyroscope measurement Z-dimension (numeric)
fbodyaccmagmean |mean of fast fourier transform of magnitude of time body acceleration signal (numeric)
fbodyaccmagstd  |mean of standard deviation of mean of fast fourier transform of magnitude of time body acceleration signal (numeric)
fbodybodyaccjerkmagmean |mean of fast fourier transform of magnitude of mean of time body linear acceleration (numeric)
fbodybodyaccjerkmagstd  |mean of standard deviation of fast fourier transform of magnitude of mean of time body linear acceleration (numeric)
fbodybodygyromagmean    |mean of fast fourier transform of mean of magnitude of time body gyroscope measurement (numeric)
fbodybodygyromagstd     |mean of standard deviation of fast fourier transform of mean of magnitude of time body gyroscope measurement (numeric)
fbodybodygyrojerkmagmean        |mean of fast fourier transform of mean of magnitude of mean of time body angular velocity (numeric)
fbodybodygyrojerkmagstd |mean of standard deviation of magnitude of mean of time body angular velocity (numeric)
angle.tbodyaccmean.gravity.     |mean of additional vector obtained by averaging signals (numeric)
angle.tbodyaccjerkmean..gravitymean.    |mean of additional vector obtained by averaging signals (numeric)
angle.tbodygyromean.gravitymean.        |mean of additional vector obtained by averaging signals (numeric)
angle.tbodygyrojerkmean.gravitymean.    |mean of additional vector obtained by averaging signals (numeric)
angle.x.gravitymean.    |mean of additional vector obtained by averaging signals (numeric)
angle.y.gravitymean.    |mean of additional vector obtained by averaging signals (numeric)
angle.z.gravitymean.    |mean of additonal vector obtained by averaging signals (numeric)