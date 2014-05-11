data <-  read.table("household_power_consumption.txt", sep=";",header = TRUE,stringsAsFactors = FALSE)

data[,1] <-as.Date(data[,1],"%d/%m/%Y")

data2 <- subset(data,Date == "2007-02-01" | Date =="2007-02-02")

data2[,1] <- paste(data2[,1],data2[,2],sep = " ")
data2[,1] <- as.POSIXct(paste(data3[,1], data3[,2]), format="%Y-%m-%d %H:%M:%S")
head(data2)
par(mar = c(4,4,1,4))

par(mfrow = c(2,2))
par(mfrow = c(1,1))
plot(data2[,1],data2[,3],type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")

plot(data2[,1],data2[,5],type = "l",xlab = "datetime",ylab = "Voltage")
plot(data2[,1],data2$Sub_metering_1,type = "l",col = "black",xlab = "",ylab = "Energy sub metering")
lines(data2[,1],data2$Sub_metering_2,col = "red")
lines(data2[,1],data2$Sub_metering_3,col = "blue")
legend("topright",lty = c(1,1),col =c("black","red","blue"), bty = "n",cex = 0.7,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(data2[,1],data2[,4],type = "l",xlab = "datetime",ylab = "Global_reactive_power")
