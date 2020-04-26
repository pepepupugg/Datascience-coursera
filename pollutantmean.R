pollutantmean <- function(directory, pollutant, id= 1:332){
  pollutants = c()
  filenames = list.files(directory)
  for(i in id){
    filepath=paste(directory,"/" ,filenames[i], sep="")
    data = read.csv(filepath, header = TRUE)
    pollutants = c(pollutants, data[,pollutant])
    
  }
  pollutants_mean = mean(pollutants, na.rm=TRUE)
  pollutants_mean
}

