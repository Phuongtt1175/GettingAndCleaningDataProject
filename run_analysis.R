run_analysis <- function()
{
    
  
  # 1 Merges the training and the test sets to create one data set.
  X_Tran <- read.table("X_train.txt")
  y_Tran <- read.table("Y_train.txt")
  X_test <- read.table("X_test.txt")
  y_test <- read.table("y_test.txt")
  
  ##Merge traning and test
  X_DS <- rbind(X_Tran,X_test)
  Y_DS <- rbind(y_Tran,y_test)
  
  
  # 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
  # Load feature list
  feat <- read.table("features.txt")
  
  # create index for column which only include mean() or std()
  varColIx<-grepl("mean()",feat$V2,fixed=TRUE)|grepl("std()",feat$V2,fixed=TRUE)
  
  # leave only column mean() and std on X_DS
  X_DS <- X_DS[,varColIx]
  
  # 3 Uses descriptive activity names to name the activities in the data set
  act_lb <- read.table("activity_labels.txt")
  Y_DS <- merge(Y_DS,act_lb,by="V1")
  
  # 4 Appropriately labels the data set with descriptive variable names. 
  names(X_DS) <- feat[varColIx,2]
  
  # 5 From the data set in step 4, creates a second, independent tidy data set 
  # with the average of each variable for each activity and each subject.
  
  # get subject list
  subj <- rbind(read.table("subject_train.txt"),read.table("subject_test.txt"))
  
  AggDim <- list(subj[,1],Y_DS[,1])
  names(AggDim) <- c("subject","activity")
  
  final <- aggregate(X_DS,by=AggDim,FUN=mean,na.rm=TRUE)
  
  
  #write.table(x,file="./data/final.txt",row.names=FALSE)
  
  #return the result data set
  final
  
}



