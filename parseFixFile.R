parseFixFile <- function (fileName) {
	parseFixMessages(read.table(fileName,sep="\n",col.names="messageText",stringsAsFactors=FALSE))
}