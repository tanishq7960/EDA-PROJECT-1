Skip to content
Search or jump to…
Pull requests
Issues
Codespaces
Marketplace
Explore
 
@tanishq7960 
Abhishek-BI
/
exploratory-data-analysis-peer-graded-assignment-course-project-1
Public
Fork your own copy of Abhishek-BI/exploratory-data-analysis-peer-graded-assignment-course-project-1
Code
Issues
Pull requests
Actions
Projects
Security
Insights
exploratory-data-analysis-peer-graded-assignment-course-project-1/exploratory data analysis peer-graded assignment course project 1.r
Copy path
Copy permalink
@Abhishek-BI
Abhishek-BI Add files via upload
Latest commit 989e4d5 on Nov 29, 2021
 History
 1 contributor
81 lines (62 sloc)  4.6 KB

#Reading, naming and subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

###Plot 3 

# Reading, naming and subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

# Transforming the Date and Time vars from characters into objects of type Date and POSIXlt respectively
subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")
subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")
subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# calling the basic plot function
plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

# annotating graph
title(main="Global Active Power Vs Time")

# Reading, naming and subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

# Transforming the Date and Time vars from characters into objects of type Date and POSIXlt respectively
subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")
subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")
subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# calling the basic plot functions
plot(subpower$Time,subpower$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subpower,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# annotating graph
title(main="Energy sub-metering")

## Plot 4
# Reading, naming and subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

# Transforming the Date and Time vars from characters into objects of type Date and POSIXlt respectively
subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")
subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")
subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# initiating a composite plot with many graphs
par(mfrow=c(2,2))

# calling the basic plot function that calls different plot functions to build the 4 plots that form the graph
with(subpower,{
  plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",  xlab="",ylab="Global Active Power")  
  plot(subpower$Time,as.numeric(as.character(subpower$Voltage)), type="l",xlab="datetime",ylab="Voltage")
  plot(subpower$Time,subpower$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_1))))
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
  with(subpower,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
  legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
  plot(subpower$Time,as.numeric(as.character(subpower$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")
})

Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
exploratory-data-analysis-peer-graded-assignment-course-project-1/exploratory data analysis peer-graded assignment course project 1.r at main · Abhishek-BI/exploratory-data-analysis-peer-graded-assignment-course-project-1
