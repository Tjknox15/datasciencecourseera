setwd("C:/Users/Timothy.Knox/Desktop/Coursera/R- Programming")

complete <- function(directory, id = 1:332){
  datafiles <- list.files(directory, full.names = TRUE)
  totalcases <- data.frame()
  observations <- data.frame()
  
  for (i in id) {
    selectdata <- read.csv(datafiles[i])
    observations <- sum(complete.cases(selectdata))
    totalcases <- rbind(totalcases, data.frame(i,observations))
  }
  totalcases
}