## Assignment Plot 1
df1 <- read.csv("household_power_consumption.txt", header=T, sep=';', dec=".", 
                na.strings="?", stringsAsFactors=F)
df2 <- subset(df1, Date %in% c("1/2/2007","2/2/2007"))
df2$Date <- as.Date(df2$Date, format="%d/%m/%Y")
png("plot1.png", width=480, height=480)
hist(df2$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", ylim = c(0,1200))
dev.off()