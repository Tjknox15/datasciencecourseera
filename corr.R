setwd("C:/Users/Timothy.Knox/Desktop/Coursera/R- Programming")

corr <- function(directory, threshold = 0){
  source("complete.R")
  complete_cases <- complete(directory)
  cases_above_thrshld <- complete_cases[complete_cases$observations > threshold, 1]
  data_files <- list.files(directory, full.names = TRUE)
  correlations <- rep(NA, length(cases_above_thrshld))
  
  for (i in cases_above_thrshld) {
    select_data <- read.csv(data_files[i])
    complete_cases <- complete.cases(select_data)
    sulfate_data <- select_data[complete_cases,2]
    nitrate_data <- select_data[complete_cases,3]
    correlations[i] <- cor(sulfate_data,nitrate_data)
  }
  correlations <- correlations[complete_cases(correlations)]
}