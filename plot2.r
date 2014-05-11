data <-  read.table("household_power_consumption.txt", sep=";",header = TRUE,stringsAsFactors = FALSE)

data[,1] <-as.Date(data[,1],"%d/%m/%Y")

data2 <- subset(data,Date == "2007-02-01" | Date =="2007-02-02")

data2[,1] <- paste(data2[,1],data2[,2],sep = " ")
data2[,1] <- as.POSIXct(paste(data3[,1], data3[,2]), format="%Y-%m-%d %H:%M:%S")

par(mar = c(2,4,4,4))
plot(data2[,1],data2[,3],type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")
