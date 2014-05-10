plot2 <- function(){
  
  data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE, colClasses = "character")
  data <- data[data[,1] == "1/2/2007" | data[,1] == "2/2/2007", ]
  data1 <- data[data[,1] == "1/2/2007",]
  data2 <- data[data[,1] == "2/2/2007", ]
  l1 <- length(data1[,1])
  l2 <- length(data2[,1])
  data[,3] <- as.numeric(data[,3])
  png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12)
  par(mar=c(2,4,1,1))
  plot(data[,3], type="l", ylab="Global Active Power (kilowatts)", col="black", cex.lab=1, xaxt="n")
  axis(side = 1, at = c(1,l1,l1+l2), labels = c("Thu","Fri","Sat"))
  dev.off()
}
