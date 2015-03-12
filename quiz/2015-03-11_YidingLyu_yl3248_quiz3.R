library(maps)
library(ggplot2)
library(reshape)
data(airquality)
str(airquality)
head(data)

data=airquality
sum(is.na(data))
data=na.omit(data)

###get the time stamp
data$Time=as.character(paste("2014",data$Month, data$Day, sep="-"))
data$Date=as.Date(data$Time, "%Y-%m-%d")

###plot with ggplot2
head(data)


### The function
YidingPlot=function(Temp, Wind){
  if(Temp==TRUE & Wind==TRUE){
    dataplot=data[,-c(2,5,6,7)]
    dataplot=melt(dataplot, id.vars=c("Date"))
    p=ggplot(dataplot, aes(x=Date, y=value, colour=variable))+geom_line()
    p=p+scale_y_continuous(name="Value")+labs(title="AirQuality")
  }
  if(Temp==TRUE & Wind==FALSE){
    dataplot=data[,-c(2,3,5,6,7)]
    dataplot=melt(dataplot, id.vars=c("Date"))
    p=ggplot(dataplot, aes(x=Date, y=value, colour=variable))+geom_line()
    p=p+scale_y_continuous(name="Value")+labs(title="AirQuality")
    
  }
  if(Temp==FALSE & Wind==TRUE){
    dataplot=data[,-c(2,4,5,6,7)]
    dataplot=melt(dataplot, id.vars=c("Date"))
    p=ggplot(dataplot, aes(x=Date, y=value, colour=variable))+geom_line()
    p=p+scale_y_continuous(name="Value")+labs(title="AirQuality")
    
  }
  if(Temp==FALSE & Wind==FALSE){
    dataplot=data[,-c(2,3,4,5,6,7)]
    dataplot=melt(dataplot, id.vars=c("Date"))
    p=ggplot(dataplot, aes(x=Date, y=value, colour=variable))+geom_line()
    p=p+scale_y_continuous(name="Value")+labs(title="AirQuality")
    
  }
  return(p)
}

###test the function
YidingPlot(Wind=TRUE, Temp=TRUE)
YidingPlot(Wind=FALSE, Temp=TRUE)
YidingPlot(Wind=TRUE, Temp=FALSE)
