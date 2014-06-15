ReadMe.md
========================================================

The run_analysis.R script takes the data from the Human Recognition Using Smartphones Data Set and creates a tidy data set consisting of the average of each variable for each activity and each subject, as outlined in the specifications for the Getting and Cleaning Data project.

As documented in the Readme.txt file included with the files for this assignment, this experiment used 30 volunteers who performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) while wearing a Samsung smartphone. The data is split between a Test set and a Training set. Movement measurements were captured and are included in the files made available for this project. Included with the files were additional files with information identifying the subject and the activity.

Following are the files used in this script:
features.txt: list of all the features (variables) being measured
*X_test.txt: measurement data for the Test set
*y_test.txt: list of activity id for Test set
*subject_test.txt: subject id data for Test set
*X_train.txt: measurement data for the Train set
*Y_train.txt: list of activity id for Train set
*Subject_train.txt: subject id data for Train set

The script takes these files and creates a tidy set using these steps:

1. Make sure that the working directory is the directory where the downloaded files are located.
2. Read the features file that includes the names of the variables being measured, and make a data frame. Add column names to the features data frame to make it easier to use the list of features as column labels for the data sets.
3. Clean the names of the features labels that include the word “mean” and “std.” These are the measurements that are needed for the assignment.
4. Make a vector of the features in the features file and clean the features labels further by removing “-“. This vector will be used later in the script as the column labels for the data set.
5. Since the files unzipped into various directories, change the working directory to the one were the test data files are located.
6. Read the test data file (x_test.txt) into a data frame, and specify that text in the data doesn’t convert into factor type by specifying that “stringsAsFactors=FALSE. Use the vector of features that was created in step #4 as the column names for the data frame. This takes care of the assignment specification to “appropriately label the data set with descriptive variable names.
7. ”Read the file (y_test.txt) with the activity id for the test data into a data frame and add column names to make it easier to work with the data frame.
8. Read the file with the subject id file (subject_test.txt) for the test data into a data frame and add column names to make it easier to work with.
9. Since the files unzipped into various directories, change the working directory to the one were the train data files are located.
10. Read the train data file (x_train.txt) into a data frame, and specify that text in the data doesn’t convert into factor type by specifying that “stringsAsFactors=FALSE. Use the vector of features that was created in step #4 as the column names for the data frame. This takes care of the assignment specification to “appropriately label the data set with descriptive variable names.
11. ”Read the file (y_train.txt) with the activity id for the train data into a data frame and add column names to make it easier to work with the data frame.
12. Read the file with the subject id file (subject_train.txt) for the test data into a data frame and add column names to make it easier to work with.
13. Combine the activity id files for the test and train data sets making sure to pay attention to the order they are being added. This is important in order to ensure that the data correctly lines up once all the elements are joined into one data frame. In this case, they are being added with the test set first and the train second.
14. Combine the subject id files for the test and train data sets also making sure to pay attention to the order they are being added. The correct order in this case is test set first and train set second.
15. Combine the test set and train set data making sure that the order is consistent with the other joined files. The test set is first and the train set is second.
16. Subset the features (variables) needed for the analysis and make a new data frame. These are the measurements that include mean() and std() in their names.
17. The subset created in step 16 still included thirteen variables outside of the specifications. These were the weighted average of the frequency components to obtain a mean frequency meanFreq(); therefore, another command was needed to exclude the meanfreq() variables from the data set.
18. Add the activity id's for the test and train sets that were joined in step 13 to the subset data frame created in step 17.
19. Add the subject id's for the test and train data that were joined in step #14 to the subset data frame created in step 18.
20. Change the activity ids from integer to factor and change the numbers used to identify the activities to text labels. This takes care of the specification in the assignment to "use descriptive activity names to name the activities in the data set."
21. This creates the first tidy data set that will be used to complete the assignment.
22. Create the second tidy data set with averages for each subject/activity combination for each variable in the original data set, and save it to a txt file. This takes care of the specification in the assignment to "create a second, independent tidy data set with the average of each variable for each activity and each subject.

Sources: Readme.txt, Features_info.txt, and other documentation from the UCI Machine Learning Repository's "Human Activity Recognition Using Smartphones Data Set;" Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto; Smartlab-Non Linear Complex Systems Laboratory; DITEN- Universita degli Studi di Genova; Genoa I-16145; Italy; www.smartlab.ws

```

