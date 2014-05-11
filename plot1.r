data <-  read.table("household_power_consumption.txt", sep=";",header = TRUE,stringsAsFactors = FALSE)
help(read.table)
data[,1] <-as.Date(data[,1],"%d/%m/%Y")

data2 <- subset(data,Date == "2007-02-01" | Date =="2007-02-02")

hist(as.numeric(data2[,3]),col = "red",xlab="Global Active Power (kilowatts)",main = "Global Active Power")


data3 <- data2
data3[,1] <- paste(data2[,1],data2[,2],sep = " ")
head(data3)

strptime(data3[1,2],"%Y-%m-%d HH:MM:SS")

data3[,1] <- as.POSIXct(paste(data3[,1], data3[,2]), format="%Y-%m-%d %H:%M:%S")

weekdays(data3[2,1])