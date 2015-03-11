setwd("~/Documents/courses/data-visualization/maps/DNK_adm")
library(ggplot2)
names(airquality) <- tolower(names(airquality))
airquality2=airquality[,1:4]
airquality2$date <- ISOdate(airquality$month, airquality$day)
y<-ISOdate(year=2014,month=airquality$month, day=airquality$day)
air2=airquality[,1:4]
air2$date=ISOdate(year=2014,month=airquality$month, day=airquality$day)

myplot=function(data){
  p=ggplot(data,aes(x=date, y=temp))+geom_line() 
  return (p)
}
myplot(air2)