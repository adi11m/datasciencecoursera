## Assignment Plot 3
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                check.names=F, stringsAsFactors=F)
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df2$Date), df2$Time)
df2$datetime <- as.POSIXct(datetime)

png("plot3.png", width=480, height=480)

with(df2, {
  plot(Sub_metering_1~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()