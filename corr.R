corr <- function(directory,threshold=0){
  filenames=list.files(directory)
  abovet=c()
  crelation=c()
  all=complete(directory)
  ##print(length(all))
  for(i in all$id){
    ##print(all[i])
    ##print(i)
    if(all[i,'nobs']>threshold){
      abovet=c(abovet,i)
    }
  }
  for (j in abovet) {
    filepath=paste(directory,"/" ,filenames[j], sep="")
    data = read.csv(filepath, header = TRUE)
    rel=cor(data$nitrate,data$sulfate,use="complete.obs")
    crelation=c(crelation,rel)
    ##print(j)
  }
  crelation
}

