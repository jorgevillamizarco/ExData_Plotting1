plot3 <- function(){
  
  data <- read.csv("household_power_consumption.txt", sep=";", header=TRUE, colClasses = "character")
  data <- data[data[,1] == "1/2/2007" | data[,1] == "2/2/2007", ]
  data1 <- data[data[,1] == "1/2/2007", ]
  data2 <- data[data[,1] == "2/2/2007", ]
  l1 <- length(data1[,1])
  l2 <- length(data2[,1])
  data[,7] <- as.numeric(data[,7])
  data[,8] <- as.numeric(data[,8])
  data[,9] <- as.numeric(data[,9])
  png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12)
  par(mar=c(2,4,1,1))
  plot(data[,7], type="l", ylab="Energy sub metering)", col="black", cex.lab=1, xaxt="n")
  lines(data[,8], type="l", col="red")
  lines(data[,9], type="l", col="blue")
  legend("topright", lwd=2, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  axis(side = 1, at = c(1,l1,l1+l2), labels = c("Thu","Fri","Sat"))
  dev.off()
}