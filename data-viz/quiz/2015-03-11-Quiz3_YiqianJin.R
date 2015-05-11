## quiz for data_viz
## Yiqian Jin

library("maps")
data(airquality)
names(airquality) <- tolower(names(airquality))
names(airquality)
## [1] "ozone"   "solar.r" "wind"    "temp"    "month"   "day"  

## write a function with data and index={1,2,3,4} which denotes 4 air quality items.
myplot=function(data,index){
  
  data$date=ISOdate(year=2014,month=data$month, day=data$day)
  data$month<-NULL
  data$day<-NULL
  require("ggplot2")
  if(index==1)
    return( ggplot(data, aes(x=date, y=ozone), na.rm=TRUE)+geom_line() )
  if(index==2)
    return( ggplot(data, aes(x=date, y=solar.r), na.rm=TRUE)+geom_line() )
  if(index==3)
    return( ggplot(data, aes(x=date, y=wind), na.rm=TRUE)+geom_line() )
  if(index==4)
    return( ggplot(data, aes(x=date, y=temp), na.rm=TRUE)+geom_line() )
  else
    print("error index input")
  
}

# call the function
myplot(airquality,1)
myplot(airquality,2)
myplot(airquality,3)
myplot(airquality,4)
myplot(airquality,999)
