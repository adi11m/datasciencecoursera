## Assignment Plot 1
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, 
                      comment.char="", quote='\"')
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
hist(df2$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Assignment Plot 2
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', 
                na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, 
                comment.char="", quote='\"')
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df2$Date), df2$Time)
df2$datetime <- as.POSIXct(datetime)

with(df2, {
  plot(Global_active_power~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

## Assignment Plot 3
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, 
                      comment.char="", quote='\"')
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df2$Date), df2$Time)
df2$datetime <- as.POSIXct(datetime)

with(df2, {
  plot(Sub_metering_1~datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Assignment Plot 4
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, 
                      comment.char="", quote='\"')
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df2$Date), df2$Time)
df2$Datetime <- as.POSIXct(datetime)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(df2, {
  plot(Global_active_power~Datetime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~Datetime, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~Datetime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~Datetime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})