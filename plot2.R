data = read.table("household_power_consumption.txt",sep=";",header=TRUE, stringsAsFactors = FALSE)[66637:69515,]
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
png(filename = "plot2.png")
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()