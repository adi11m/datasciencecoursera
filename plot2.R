## Assignment Plot 2
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', 
                na.strings="?", check.names=F, stringsAsFactors=F, 
                comment.char="", quote='\"')
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df2$Date), df2$Time)
df2$datetime <- as.POSIXct(datetime)

png("plot2.png", width=480, height=480)
with(df2, {
  plot(Global_active_power~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.off()