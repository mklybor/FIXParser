fixKeyValuePairs <- function (fixNormalized) {
	msgList=split(fixNormalized,fixNormalized$msgNum)
	result = list()
	for (i in 1:length(msgList)) {
		msgData <- msgList[[i]]
		msg <- character()
		msg[1] <- msgData$msgNum[1]
		names(msg)[1] <- "msgNum"
		for (j in 1:length(msgData$msgNum)) {
			msg[j+1] <- msgData$value[j]
			names(msg)[j+1] <- paste("Tag",msgData$tag[j],sep="")
		}
		result[i] <- list(msg)
	}
	result
}