setwd("C:/Users/Timothy.Knox/Desktop/Coursera/R- Programming")

pollutantmean <- function(directory, pollutant, id = 1:332){
  datafiles <- list.files(directory, full.names = TRUE)
  selectdata <- data.frame()
  
  for (i in id) {
    selectdata <- rbind(selectdata, read.csv(datafiles[i]))
  }
  if (pollutant == 'sulfate') {
    mean(selectdata$sulfate, na.rm = TRUE)
  }else if (pollutant == 'nitrate'){
    mean(selectdata$nitrate, na.rm = TRUE)
  }
}
