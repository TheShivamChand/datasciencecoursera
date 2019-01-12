datas<-read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'),na.strings = "?")
datas$Date<-as.Date(datas$Date,"%d/%m/%Y")
datas<-subset(datas,Date>=as.Date("2007-2-1")&Date<=as.Date("2007-2-2"))
datas<-datas[complete.cases(datas),]
hist(datas$Global_active_power,main="Global Active Power",xlab = "Global Active Power (kilowatts)",col='red')
dev.copy(png,"plot1.png",height=480,width=480)
dev.off()
