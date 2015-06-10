pollutantmean <- function(directory, pollutant, id = 10:12){
	filepath <- paste("C:/Users/ephyto/Google Drive/R - coursera", directory, sep="/")
	allfiles <- as.character(list.files(filepath))
	specdatapath <- paste(filepath, allfiles, sep="/")
	dat <- data.frame()
	for(i in id){		
		dat <- rbind(dat, read.csv(specdatapath[i], sep=","))	
	}
	final <- mean(dat[[pollutant]], na.rm=TRUE)
	return(round(final,3))
}