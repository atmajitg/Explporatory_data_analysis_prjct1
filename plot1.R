data = read.table("household_power_consumption.txt",sep=";",header=TRUE, stringsAsFactors = FALSE)[66637:69515,]
png(filename="plot1.png")
hist(as.numeric(data$Global_active_power), col="red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()