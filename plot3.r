data <-  read.table("household_power_consumption.txt", sep=";",header = TRUE,stringsAsFactors = FALSE)

data[,1] <-as.Date(data[,1],"%d/%m/%Y")

data2 <- subset(data,Date == "2007-02-01" | Date =="2007-02-02")

data2[,1] <- paste(data2[,1],data2[,2],sep = " ")
data2[,1] <- as.POSIXct(paste(data3[,1], data3[,2]), format="%Y-%m-%d %H:%M:%S")

par(mar = c(2,4,1,4))
plot(data2[,1],data2$Sub_metering_1,type = "l",col = "black",xlab = "",ylab = "Energy sub metering")
lines(data2[,1],data2$Sub_metering_2,col = "red")
lines(data2[,1],data2$Sub_metering_3,col = "blue")
legend("topright",lty = c(1,1),col =c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
help(legend)
