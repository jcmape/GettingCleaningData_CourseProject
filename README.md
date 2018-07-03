# Getting and Cleaning Data Course Project
JHU Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set to be used for later analysis.

This repository contains the following files:

1. README.md, that explains the analysis files is clear and understandable.
2. run_analysis.R, the R script that was used to create the dataset
3. CodeBook.md, the code book, which describes the contents of the dataset.
4. tidy_data.txt, which contains the tidy dataset.

Here's how the run_analysis is executed: 
1. Setup working directory.
2. Download the dataset to the working directory from the specified URL and unzip the file.
3. Load the activity labels and features.
4. Load the data for test and training datasets.
5. Merge the training and test datasets
6. Rename column names
7. Use descriptive activity names to name the activity column in the merged data (see CodeBook.md)
8. Take the average of each variable for each activity and each subject and write the output to a tidy data set.

The tidy_data.txt is the output of the run_analysis.R.  
