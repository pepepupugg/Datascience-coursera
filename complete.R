complete <- function(directory, id= 1:332){
  ids = c()
  nobss = c()
  filenames = list.files(directory)
  for(i in id){
    filepath=paste(directory,"/" ,filenames[i], sep="")
    data = read.csv(filepath, header = TRUE)
    completeCases = data[complete.cases(data), ]
    ids =  c(ids, i)                    
    nobss = c(nobss, nrow(completeCases) )
  }
  data.frame(id=ids, nobs=nobss)
}