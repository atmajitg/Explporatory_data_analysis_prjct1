#read the data
data = read.table("household_power_consumption.txt",sep=";",header=TRUE, stringsAsFactors = FALSE)[66637:69515,]

#date conversion
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

#generate the plot with legends
png(filename = "plot3.png")
plot(data[,7]~data$Datetime, type="l",ylab="Energy Sub Meeting", xlab="")
lines(data[,8]~data$Datetime, type="l", col ="red")
lines(data[,9]~data$Datetime, type="l", col ="blue")
legend("topright",legend=c("Sub_meeting_1","Sub_meeting_2","sub_meeting_3"),lty=1,col=c("black","red","blue"))
dev.off()