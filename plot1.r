hpc <- read.csv("household_power_consumption.txt",sep=";")
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
hpc$Time <- strptime(paste(hpc$Date, hpc$Time), "%Y-%m-%d %H:%M:%S")
hpcGAP <- subset(hpc, Date=="2007-02-01" | Date=="2007-02-02")
png("plot1.png")
hist(as.numeric(as.character(hpcGAP$Global_active_power)), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()