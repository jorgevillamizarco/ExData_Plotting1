plot1 <- function(){

  data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE, colClasses = "character")
  data <- data[data[,1] == "1/2/2007" | data[,1] == "2/2/2007", ]
  data[,3] <- as.numeric(data[,3])
  png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12)
  par(mar=c(4,4,1,1))
  hist(data[,3], breaks=20, xlab="Global Active Power (kilowatts)", main="Global Active power", cex.lab=1, col="red")
  dev.off()
}