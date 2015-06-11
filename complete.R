complete <- function(directory, id = 1:332) {
	filepath <- paste("C:/Users/ephyto/Google Drive/R - coursera", directory, sep="/")
	allfiles <- as.character(list.files(filepath))
	specdatapath <- paste(filepath, allfiles, sep="/")

	
	idx <- c()
	nobs <- c()
	y <- data.frame()
	xf <- c()
	x <- 0
	for(i in id){
		x <- x + 1
		xf = append(xf, x)
		idx = append(idx, i)
		y <- read.csv(specdatapath[i], sep=",")
		y <- y[complete.cases(y),]
		nobs <- append(nobs, nrow(y))
	}
	dataset = cbind(idx, nobs)
	colnames(dataset) <- c("id", "nobs")
	dataset <- data.frame(dataset)
dataset
	#print(idx)
	#print(nobs)
}