
#change working directory
setwd("~/Data Science Specialization/Getting and Cleaning Data/UCI HAR Dataset")

#read features file & add column names
features<-read.table("features.txt", stringsAsFactors=FALSE,col.names=c("rowid","featuresid"))

#clean names of features needed
from<-c("mean[^Freq].*","std.*")
to<-c("mean","std")
gsub2<-function(pattern, replacement, x,...){
        for (i in 1:length(pattern))
                x<-gsub(pattern[i], replacement[i],x,...)
        x
}

features$featuresid<-gsub2(from, to, features$featuresid)

#make a vector out of featuresid & remove "-"
features$featuresid<-gsub("-","", features$featuresid)
features$featuresid<-tolower(features$featuresid)
colulabs<-features$featuresid

#change working directory
setwd("~/Data Science Specialization/Getting and Cleaning Data/UCI HAR Dataset/test")

#read test data file

testdata<-read.table("X_test.txt", stringsAsFactors=FALSE, col.names=colulabs)

#read the activity IDs file for test data
testactid<-read.table("y_test.txt",col.names=c("activityid"))


#read the subject IDs file for test data
testsubjid<-read.table("subject_test.txt",col.names=c("subjectid"))


#change working directory
setwd("~/Data Science Specialization/Getting and Cleaning Data/UCI HAR Dataset/train")

#read train data file
traindata<-read.table("X_train.txt", stringsAsFactors=FALSE,col.names=colulabs)

#read the activity IDs file for train data
trainactid<-read.table("y_train.txt",col.names=c("activityid"))

#read the subject IDs file for train data
trainsubjid<-read.table("subject_train.txt",col.names=c("subjectid"))

#combine activity ID files (test first, train second)
testtrainactid<-rbind(testactid,trainactid)

#combine subject ID files (test first, train second)

testtrainsujid<-rbind(testsubjid, trainsubjid)

#combine test and train data (test first, train second)
testtraindata<-rbind(testdata,traindata)

#subset needed columns

testtraindatasub<-testtraindata[,grepl("mean|std",names(testtraindata))]

testtraindatasub<-testtraindatasub[,!grepl("freq",names(testtraindatasub))]

#add activity IDs (test first, train second)
testtraindatasub<-cbind(testtrainactid, testtraindatasub)

#add subject IDs (test first, train second)
testtraindatasub<-cbind(testtrainsujid, testtraindatasub)

#change activity IDs from integer to factor and use labels
testtraindatasub$activityid<-as.factor(testtraindatasub$activityid)

library("plyr")
testtraindatasub$activityid<-revalue(testtraindatasub$activityid, c("1"="walking", "2"="walkingupstairs", "3"="walkingdownstairs", 
                                        "4"="sitting", "5"="standing", "6"="laying"))
#save new tidy data frame to txt file
write.table(testtraindatasub, file="pretidydata.txt")

#create 2nd tidy data set
#find the mean for all features by subjectid and activityid
attach(testtraindatasub)

tidydata <-aggregate(testtraindatasub, by=list(subjectid,activityid), 
                    FUN=mean)

detach(testtraindatasub)
#tidy up the new data frame
tidydata[3:4]<-list(NULL)
tidydata<-rename(tidydata,c("Group.1"="subjectid", "Group.2"="activityid"))
View(tidydata)

#save the 2nd tidy data frame to txt file
write.table(tidydata, file="tidydata.txt")


