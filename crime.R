crime <- read.csv('http://datasets.flowingdata.com/crimeRatesByState2005.csv',sep=",",header=TRUE)

plot(crime$murder, crime$burglary)
crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime2$state != "United States",]

plot(crime2$murder, crime2$burglary)
plot(crime2$murder, crime2$burglary,xlim = c(0,10),ylim = c(0,1200))
# LOESS
scatter.smooth(crime2$murder,crime2$burglary,xlim=c(0,10),ylim=c(0,1200))

plot(crime2[,2:9],panel=panel.smooth)


symbols(crime$murder,crime$burglary,crime$population)
radius <- sqrt(crime$population / pi)
symbols(crime$murder,crime$burglary,circles=radius)
symbols(crime$murder,crime$burglary,circles=radius,inches=0.35,fg='white',bg='red',xlab='Murder Rate',ylab='Burglary Rate')

symbols(crime$murder,crime$burglary,squares = sqrt(crime$population),inches = 0.5)

text(crime$murder,crime$burglary,crime$state,cex = 0.5)


birth <- read.csv('http://datasets.flowingdata.com/birth-rate.csv')
stem(birth$X2008)
hist(birth$X2008)
hist(birth$X2008,breaks = 20)
birth2008 <- birth$X2008[!is.na(birth$X2008)]
