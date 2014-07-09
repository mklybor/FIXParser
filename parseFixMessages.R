parseFixMessages <- function (f1) {
	f1s<-strsplit(f1$messageText,"^A",fixed=TRUE)
	result = data.frame (msgNum = numeric(),tag=numeric(),value=character())
	
	for (i in 1:length(f1$messageText)) {
		for (j in 1:length(f1s[[i]])) {
			#k <- (i-1)*length(f1[[i]])+j
	
			element <- strsplit(f1s[[i]][j],"=",fixed=TRUE)
			result = rbind (result,
					 data.frame (msgNum = i,
					 tag=element[[1]][1],
					 value=element[[1]][2],stringsAsFactors=FALSE)
			)
		}
	}
	result
}